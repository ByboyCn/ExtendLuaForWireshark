﻿--[=======[
-------- -------- -------- --------
  Tencent SSO 2  >>>> Fields
-------- -------- -------- --------

返回表：表中二值，分别是fieldsex、fields
]=======]

local CsCmdNo = require "TXSSO2/CsCmdNo";
local PubNo = require "TXSSO2/PubNo";
local RetCode = require "TXSSO2/RetCode";

local fields =
  {
    { "bytes",      "unsolved",       "未解决"                   },
    
    { "uint8",      "cPreFix",        "协议前缀",       base.HEX },
    { "uint8",      "cSufFix",        "协议后缀",       base.HEX },
    { "uint8",      "cMainVer",       "SSO主版本",      base.HEX },
    { "uint8",      "cSubVer",        "SSO次版本",      base.HEX },
    { "uint16",     "wCsCmdNo",       "指令",           base.HEX, CsCmdNo },
    { "uint16",     "wCsIOSeq",       "包序",           base.HEX },
    { "uint32",     "dwUin",          "QQ号",           base.DEC },
    { "bytes",      "bufCsPrefix",                               },
    { "uint32",     "dwClientType",   "客户端类型",     base.HEX },
    { "uint32",     "dwPubNo",        "发行版本号",     base.HEX, PubNo },
    { "uint16",     "wTlvVer",        "TLV版本号",      base.HEX },
    { "uint32",     "dwSSOVersion",   "SSO版本号",      base.HEX },
    { "uint32",     "dwServiceId",    "ServiceId",      base.HEX },
    { "uint32",     "dwClientVer",    "客户端版本",     base.HEX },
    { "uint16",     "wRedirectCount", "重定向次数",     base.DEC },
    { "uint8",      "cRedirectCount", "重定向次数",     base.DEC },
    { "ipv4",       "dwRedirectIP",   "重定向地址"               },
    { "ipv4",       "dwServerIP",     "服务器地址"               },
    { "uint8",      "cPingType",      "PingType",       base.HEX },
    { "bytes",      "bufDHPublicKey", "ECDHPublicKey"            },
    { "uint8",      "cResult",        "响应码",         base.HEX, RetCode },
    { "absolute_time", "dwServerTime","服务器时间",     base.LOCAL },
    { "ipv4",       "dwClientWanIP",  "客户端外网地址"             },
    { "uint16",     "wClientWanPort", "客户端外网端口", base.DEC_HEX },
    { "uint32",     "dwIDC",          "IDC",            base.HEX },
    { "uint32",     "dwISP",          "ISP",            base.HEX },
    { "uint16",     "wRedirectPort",  "重定向端口",     base.DEC_HEX },
    { "string",     "ComputerName",   "计算机名称"               },
    { "bytes",      "bufComputerID",  "机器码"                   },
    { "bool",       "bRememberPwdLogin","记住密码"               },
    { "bytes",      "bufPsMD5",       "密码MD5"                  },
    { "bytes",      "bufTGTGTKey",    "TGTGTKey"                 },
    { "bytes",      "bufSID",         "SID"                      },

  };

local fieldsex, fields = ProtoFieldEx( "txsso2.", fields );

return
  {
  setmetatable(
    fieldsex,
    {
    __newindex = function()
      return error "TXSSO2 fieldsex禁止修改";
    end
    }
    ),
  setmetatable(
    fields,
    {
    __newindex = function()
      return error "TXSSO2 fields禁止修改";
    end
    }
    )
  };