class UserMail < ActionMailer::Base
  default from: "bri.lobdell@gmail.com"

  def task_reminder(task)
  	@task = task
  	mail(to: @task.recipientemail, subject: "You've been sent a reminded")
  end

 

end
