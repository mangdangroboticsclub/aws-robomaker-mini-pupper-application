/*
Copyright (c) 2019-2020, Juan Miguel Jimeno
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the copyright holder nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#ifndef QUADRUPPED_LEG_H
#define QUADRUPPED_LEG_H

#include <geometry/geometry.h>
#include <quadruped_base/quadruped_joint.h>

namespace champ
{
    class QuadrupedLeg
    {
        unsigned int no_of_links_;
        
        geometry::Transformation zero_stance_;
        float center_to_nominal_;

        unsigned int id_;

        unsigned long last_touchdown_;

        bool in_contact_;

        int knee_direction_;
        bool is_pantograph_;

        bool gait_phase_;
        
        public:
            QuadrupedLeg():
                no_of_links_(0),
                center_to_nominal_(0),
                id_(0),
                last_touchdown_(0),
                in_contact_(1),
                knee_direction_(0),
                is_pantograph_(false),
                gait_phase_(1)
            {
                int no_of_joints = 0;
                joint_chain[no_of_joints++] = &hip;
                joint_chain[no_of_joints++] = &upper_leg;
                joint_chain[no_of_joints++] = &lower_leg;
                joint_chain[no_of_joints++] = &foot;
            }

            geometry::Transformation foot_from_hip()
            {
                //forward kinematics
                geometry::Transformation foot_position;
                foot_position = Identity<4,4>();

                for(unsigned int i = 3; i > 0; i--)
                {
                    foot_position.Translate(joint_chain[i]->x(), joint_chain[i]->y(), joint_chain[i]->z());
                    //prevent hip from being rotated as hip is on a different axis of rotation
                    if(i > 1)
                    {
                        foot_position.RotateY(joint_chain[i-1]->theta());          
                    }
                }

                return foot_position;
            }

            geometry::Transformation foot_from_base()
            {
                geometry::Transformation foot_position;

                foot_position.p = foot_from_hip().p;
                foot_position.RotateX(hip.theta());

                foot_position.Translate(hip.x(), hip.y(), hip.z());

                return foot_position;
            }

            void joints(float hip_joint, float upper_leg_joint, float lower_leg_joint)
            { 
                hip.theta(hip_joint);
                upper_leg.theta(upper_leg_joint);
                lower_leg.theta(lower_leg_joint);
            }

            void joints(float *joints)
            {
                for(unsigned int i = 0; i < 3; i++)
                {
                    joint_chain[i]->theta(joints[i]);
                }
            }

            geometry::Transformation zero_stance()
            {
                zero_stance_.X() = hip.x() + upper_leg.x() + gait_config->com_x_translation;
                zero_stance_.Y() = hip.y() + upper_leg.y();
                zero_stance_.Z() = hip.z() + upper_leg.z() + lower_leg.z() + foot.z();
                
                return zero_stance_;
            }

            float center_to_nominal()
            {
                float x = hip.x() + upper_leg.x();
                float y = hip.y() + upper_leg.y();
                
                return sqrtf(pow(x,2) + pow(y,2));
            }

            unsigned int  id()
            {
                return id_;
            }

            unsigned long int  last_touchdown()
            {
                return last_touchdown_;
            }

            void  last_touchdown(unsigned long int current_time)
            {
                last_touchdown_ = current_time;
            }

            void id(unsigned int id)
            {
                id_ = id;
            }

            void in_contact(bool in_contact)
            {
                in_contact_ = in_contact;
            }

            bool in_contact()
            {
                return in_contact_;
            }

            void gait_phase(bool phase)
            {
                gait_phase_ =  phase;
            }

            bool gait_phase()
            {
                return gait_phase_;
            }

            int knee_direction()
            {
                return knee_direction_;
            }

            void knee_direction(int direction)
            {
                knee_direction_ = direction;
            }

            void is_pantograph(bool config)
            {
                is_pantograph_ = config;
            }

            bool is_pantograph()
            {
                return is_pantograph_;
            }

            void setGaitConfig(champ::GaitConfig *gait_conf)
            {
                gait_config = gait_conf;
            }

            champ::Joint hip;
            champ::Joint upper_leg;
            champ::Joint lower_leg;
            champ::Joint foot;

            champ::GaitConfig *gait_config;

            Joint *joint_chain[4];
    };
}
#endif

