class Advisor < User
	has_many :students
	has_many :audits
end