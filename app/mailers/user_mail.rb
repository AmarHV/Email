class UserMail < ActionMailer::Base
  default from: "bri.lobdell@gmail.com"

  def task_reminder(task)
  	@task = task
  	mail(to: @task.recipientemail, subject: "You've been sent a reminded")
  end

  def send_mail
	@task = Task.find(params[:task_id])
	UserMail.task_reminder(@task).deliver
	redirect_to :back
  end

end
