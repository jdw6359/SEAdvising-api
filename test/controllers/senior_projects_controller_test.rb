require 'test_helper'

class Api::V1::SeniorProjectsControllerTest < ActionController::TestCase

	context 'senior projects controller' do
		setup do
			@user = create(:user)
			bypass_authentication(@user, @controller)
		end

		context '#create' do
			setup do
				@student = create(:student)
			end

			should 'invoke :set_student' do
				@controller.expects(:set_student)
				post :create, :student_id => @student.id, senior_project: {}
			end

			should 'invoke :senior_project_params' do
				@controller.expects(:senior_project_params)
				post :create, :student_id => @student.id, senior_project: {}
			end
		end
	end
end