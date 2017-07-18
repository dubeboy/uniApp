json.extract! job_seeker, :id, :j_email, :j_username, :j_firstname, :j_lastname, :j_password, :created_at, :updated_at
json.url job_seeker_url(job_seeker, format: :json)
