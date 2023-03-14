if @experience.persisted?
  json.form render(partial: "experiences/form_experiences", formats: :html, locals: {solution: @solution, experience: Experience.new})
  json.inserted_item render(partial: "solutions/experience", formats: :html, locals: {experience: @experience})
else
  json.form render(partial: "experiences/form_experiences", formats: :html, locals: {solution: @solution, experience: @experience})
end
