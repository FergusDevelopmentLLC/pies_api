
json.(user, :id, :email, :first_name, :last_name, :pies )
json.token user.generate_jwt