do
local function run(msg, matches)
local bot_id = 182092698 -- ای دی ربات شما
    if matches[1] == 'ترک گروه' and is_admin(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
       send_large_msg("chat#id"..msg.to.id, 'این گروه توسط من اداره نمی شود قربان', ok_cb, false)
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^(ترک گروه)$",
    "^!!tgservice (chat_add_user)$",
  },
  run = run
}
end
