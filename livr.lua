local aux = {}

function aux.class(class)
  class = class or {}
  class.__index = class
  return class
end

function aux.object(class, object)
  return setmetatable(object, class)
end


local mod = aux.class()

function mod.new(class, scheme)
  return aux.object(class, {
    scheme = scheme;
    rules = {};
    short = {};
  })
end

return mod
