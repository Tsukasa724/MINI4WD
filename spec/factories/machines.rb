FactoryBot.define do
  factory :machine do
    machine_name   { "testmachine" }
    chassis_type  { "testchassis_type" }
    motor_type    { "testmotor_type" }
    machine_weight { "100.0" }
  end
end
