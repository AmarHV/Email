class UserMail < ActionMailer::Base
  default from: "from@example.com"

  def task_reminder(task)
  	@task = task
  	@url = 'http://localhost:3000/'

  	mail(to: @task.recipientemail, subject: "You've been sent a reminded")
  end

end
