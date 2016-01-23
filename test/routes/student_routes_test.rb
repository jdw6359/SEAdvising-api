require 'test_helper'

class StudentRoutesTest < ActionController::TestCase

	context 'student routes' do
		should 'route to all students' do
			assert_routing({method: 'get', path: URL_BASE + 'students'},
				{controller: URL_BASE + 'students', action: 'index'})
		end

		should 'route to a student' do
			student_id = "1"
			assert_routing({method: 'get', path: URL_BASE + 'students/' + student_id},
				{controller: URL_BASE + 'students', action: 'show', id: student_id})
		end

		should 'route to create a student' do
			assert_routing({method: 'post', path: URL_BASE + 'students'},
				{controller: URL_BASE + 'students', action: 'create'})
		end

		should 'route to search for students' do
			assert_routing({method: 'get', path: URL_BASE + 'students/search'},
				{controller: URL_BASE + 'students', action: 'search'})
		end

		context 'nested routes' do
			student_id = "1"
			nested_url_base = URL_BASE + 'students/' + student_id + '/'

			should 'route to a student\'s transactions' do
				assert_routing({method: 'get', path: nested_url_base + 'transactions'},
					{controller: URL_BASE + 'transactions', action: 'index', 
					student_id: student_id})
			end

			should 'route to create a student\'s coop' do
				assert_routing({method: 'post', path: nested_url_base + 'coops'},
					{controller: URL_BASE + 'coops', action: 'create',
					student_id: student_id})
			end

			should 'route to create a student\'s audit' do
				assert_routing({method: 'post', path: nested_url_base + 'audits'},
					{controller: URL_BASE + 'audits', action: 'create', 
					student_id: student_id})
			end

			should 'route to create a student\'s change of program out' do
				assert_routing({method: 'post', path: nested_url_base + 'cop_outs'},
					{controller: URL_BASE + 'cop_outs', action: 'create',
					student_id: student_id})
			end

			should 'route to create a student\'s senior project' do
				assert_routing({method: 'post', path: nested_url_base + 'senior_projects'},
					{controller: URL_BASE + 'senior_projects', action: 'create',
					student_id: student_id})
			end
		end
	end
end