json.array! @todos do |todo|
  json.partial! partial: 'todo', locals: {todo: todo}
end
