local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- ข้อมูล EXD_DATA ตามที่คุณต้องการ (ห้ามลบ)
local 412 = "114870502995953&/n= [[412 luv kul exclusive for 1688 gang only ]] ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 Y9F%AB%F0%F0%9F%AB%9F%A4%9F%F0%A0%A7%94%F0%AB%90%9F%A4%AB%9F%9F%F0%A4%94%F0%9F%A7%F0%AB%90%A4%A0%F0%9F%F0%9F%AB%9F%9F%A0%94%F0%F0%A7%F0%A4%90%A4%AB%9F%F0%90%AB%A7%AB%F0%9F%9F%A0%9F%94%9F%F0%A4%F0%A4%E2%80%AE ANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 &Ã¢â‚¬9%E6%80%20%0A%09%AF%E6%89%0D%89%E8%80%B4%80%AF%0D%B4%89%E6%E6%09%0A%20%80%E8%89%80%89%AF%89%20%E8%80%0D%0A%09%E6%E6%B4%E2%80%AE&Ã¢â‚¬â€¹    
=S‮&i%64=%31%34%30%34%39%37%34%31%35%34%30%32%31%30%33%26%69%64%3D%31%32%39%35%36%39%30%34%39%34%37%36%37%33%34%26%61%73%73%65%74%6e%61%6d%65%3D%6D%36%6C%70%63%6B%78%61%B1%76%72%39%0D%0A%77%74%31%67%32%30%35%73%65%37%68%71%6F%79%31%69%33%75%64%62%38%C3%6E%7A%6A%34%66%76%6D%33%77%31%32%6A%39%68%31%73%30%34%79%35%70%6F%B1%63%65%74%75%6E%62%0A%69%6C%0D%71%66%78%36%72%6B%7A%67%64%38%61%C3%37%69%6E%38%73%72%63%34%37%64%6C%0D%6D%75%78%31%33%61%B1%65%6A%68%70%36%71%6B%79%62%32%7A%39%77%31%66‏%74%0A%76%30%35%C3%6F%67%35%63%6D%72%64%0D%6E%7A%62%78%6A%77%74%31%75%79%76%38%65%33%73%30%66%0A%69%6B%31%32%36%C3%67%68%70%6F%6C%71%61%B1%37%39%34 %26%69%64%3D%31%33%37%34%33%34%38%31%31%32%33%38%31%32%34%26%61%73%73%65%74%6e%61%6d%65%3D%63%72%6B%79%6E%62%75%74%0D%76%36%31%68%0A%38%6F%32%33%78%B1%77%C3%67%73%69%70%30%7A%65%39%64%34%6C%66%6A%6D%71%61%37%35%31%64%37%38%73%79%74%6F%77%67%6A%34%6C%68%72%39%6D%0D%70%6E%0A%30%7A%32%36%69%66%31%6B%35%62%B1%65%31%C3%33%71%76%61%78%75%63%34%31%70%30%63%35%38%0D%68%C3%67%6B%B1%73%79%6D%62%33%37%36%39%76%78%77%7A%71%72%31%6E%0A%61%74%32%65%64%66%6A%75%69%6F%6C%0A%73%33%34%76%6C%36%B1%75%38%74%37%32%66%6E%79%62%64%61%6A%7A%68%69%78%72%6D%65%39%6B%31%35%30%6F%77%C3%71%67%31%63%70%0D&%69d=%39%37%31%36%37%35%32%36%33%39%35%37%32%32&%7A%71%68%37%38%31%64%33%61%36%6D%35%6C%79%6E%32%77%6B%73%70%C3%67%74%63%30%34%B1%65%75%66%78%69%72%39%0D%6F%62%0A%6A%76%31%73%79%6F%77%70%7A%67%72%0A%0D%36%61%31%31%69%64%C3%74%B1%62%76%30%33%34%78%63%6A%71%6C%35%6B%6D%39%37%68%38%65%66%75%32%6E%EF%BB%BF%E2%80%8B%C2%A0%E2%80%8Fa%25b%3Ac&%76ersion=2&%A3%40d%3B%F0%9F%A4%94%F0%9F%A4%AB%F0%9F%A7%90%F0%9F%AB%A0%E2%80%AE!}}}V&id=%34%30%30%30%37%30%39%30%37%3684669374&%4546å ãææŸœ°«€°€%20£%E3ã‡Šå†%8A ¯%0D ãçè¥¤€ãœâ€Ž“  ç–ç‰…– ´»è%09å%0Aä%80£åççŠæ è%20 ¤–€ –€ã°â%80%0D å‰†
=A‮ç%E3œã%8A»Ž´èã €° Ÿ%0Aœ¯€¥“…%09«ã‡åäæçäããæç Ÿ°%E3ã%0Aè%80ã€° –£‡Žæ¯%0D ‰»%8Aè œ€Š“–â¥«å ¤†€%09%20œ…å€ç´å œ€åè¤€  %E3çœ†´æ%80Š€«°ãŽã»ã°å–å¯æ%8A“€%0Dè  â %20%09–Ÿä…¥ç ç%0Aã‡‰£è  « è£%0A€%09œ°“…ããå€Ÿä–‡– ‰†Ž¯â¤å´ç%80€%E3ç æ%8A%20¥%0D€°ç»ãœ åŠæã “ %0A»å â%E3æ‰ èã –%0D†ç…ä¤£œèç%20°ã€%8A´å¯æçå€Šã‡«€–œŽ%09Ÿ¥ ã°%80€€†ã°%20èå%80«æ %0A%09œ°€ åäæåç“Šœ%8A…ç€ ã–£ â –¯´ã¥%0DŽ »%E3ã‰è€Ÿç‡¤† –%80çœçãŽŠã…â€ ¥£“‰œ%8A%0Däã%09°%E3 åå¯– €‡æŸ«´è%20€€ %0A°æè ã¤å»ç€%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8A ¯%0D ãçè¥¤€ãœâ€Ž“  ç–ç‰…– ´»è%09å%0Aä%80£åççŠæ è%20 ¤–€ –€ã°â%80%0D å‰†ç%E3œã%8A»Ž´èã €° Ÿ%0Aœ¯€¥“…%09«ã‡åäæçäããæç Ÿ°%E3ã%0Aè%80ã€° –£‡Žæ¯%0D ‰»%8Aè œ€Š“–â¥«å ¤†€%09%20œ…å€ç´å œ€åè¤€  %E3çœ†´æ%80Š€«°ãŽã»ã°å–å¯æ%8A“€%0Dè  â %20%09–Ÿä…¥ç ç%0Aã‡‰£è  « è£%0A€%09œ°“…ããå€Ÿä–‡– ‰†Ž¯â¤å´ç%80€%E3ç æ%8A%20¥%0D€°ç»ãœ åŠæã “ %0A»å â%E3æ‰ èã –%0D†ç…ä¤£œèç%2                 0‏°ã€%8A´å¯æçå€Šã‡«€–œŽ%09Ÿ¥ ã°%80€€†ã°%20èå%80«æ %0A%09œ°€ åäæåç“Šœ%8A…ç€ ã–£ â –¯´ã¥%0DŽ »%E3ã‰è€Ÿç‡¤† –%80çœçãŽŠã…â€ ¥£“‰œ%8A%0Däã%09°%E3 åå¯– €‡æŸ«´è%20€€ %0A°æè ã¤å»ç€%8Aâ°«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0Dœç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£ç%80 ã¤%20 €» %8Aã–ã%0Aç %09†âæŽœè…çå‰°€æ–å‡ãè“Š%80 ã¤%20 €» %8Aã–ã%0Aç %09†âæŽœè…çå‰°€æ–å‡ãè“Š&%69%64 =      %37 %32 %35 %31 %33 %32 %38 %33 %35    %31&    id = 1885881335441 &id~  
=X‮&%69%64=%37%31%33%35%32%32%33%36 && i%64 =1%31273%37751%3441%33&%69%64=00%31%32%30%31%30%34%38%37%31%33%36%30%33%32%37&%00&%00%E6%E8%20%E6%AF%B4%89%0A%89%0D%09%80%80%0D%89%0A%89%80%B4%E8%E6%80%09%E6%AF%20%0A%AF%80%89%0D%09%20%80%E8%B4%89%E6%E6%0D%89%80%E6%0A%20%AF%E6%80%E8%09%B4%89%E6%AF%89%89%20%B4%0D%0A%E8%09%E6%80%80%0A%20%B4%AF%80%09%80%E8%E6%0D%89%89%E6%B4%89%0A%20%E6%80%80%89%0D%E8%AF%09%E6%80%89%09%0D%E6%20%B4%89%80%E6%AF%0A%E8%E6%80%89%E8%0A%20%0D%80%89%E6%AF%09%B4%20%0A%E6%0D%B4%AF%E6%89%09%80%89%E8%80%20%89%09%E6%0A%89%80%E6%80%AF%0D%B4%E8%09%B4%0D%89%89%E6%E6%E8%AF%20%0A%80%80%B4%89%0D%09%AF%0A%80%80%E6%89%20%E6%E8%89%09%89%0A%0D%AF%80%E8%20%80%E6%B4%E6%80%B4%E8%E6%80%89%E6%09%0A%0D%89%AF%20%E2%80%AE&â€‹%69%64=00%31%33%35%37%31%37%36%35%33%34%38%39%34%36%39&%00&%00%E2%80%AE&â€‹%69d=00%31%31%37%39%37%38%39%30%31%30%31%36%32%32%35&%00&%00%9F%F0%9F%94%AB%A4%A0%F0%AB%9F%A4%F0%9F%90%A7%F0%F0%94%F0%A7%A4%AB%F0%A0%9F%F0%9F%9F%AB%A4%90%9F%A4%90%A7%9F%F0%F0%94%AB%F0%9F%A0%9F%A4%9F%AB%F0%AB%A7%9F%F0%94%90%F0%9F%F0%9F%AB%A4%9F%A0%F0%A4%A4%9F%AB%90%9F%AB%94%F0%9F%A0%9F%A7%A4%F0%F0%F0%90%F0%9F%A4%F0%F0%AB %A7%9F%9F%94%F0%A0%9F%AB%A4%F0%90%A0%9F%AB%9F%94%F0%AB%A4%A4%F0%F0%A7%9F%9F%90%AB%9F%A7%F0%9F%A4%94%F0%F0%9F%A4%F0%AB%9F%A0%AB%F0%A0%F0%A4%AB%94 %9F%9F%9F%A7%F0%F0%9F%A4%90%9F%9F%A4%F0 %F0%A4%AB%A0%F0%A7%9F%90%9F%F0%AB%94%9F%F0%AB%AB%94%9F%F0%90%9F%A0%F0%A4%A4%9F%A7%F0%F0%A4%F0%9F%90%F0%94%A0%F0%9F%9F%9F%AB%A7%A4%AB%A4%9F%AB%A0%F0%A7%9F%F0%AB%94%9F%90%F0%9F%F0%A4%AB%90%A7%9F%F0%F0%9F%9F%A4%AB%94%A0%A4%F0%F0%9F%90%AB%94%9F%F0%9F%9F%F0%A4%AB%9F%F0%A7%A4%A0%F0%9F%AB%9F%F0%94%90%A4%9F%AB%A0%9F%F0%A7%F0%A4%F0%AB%9F%F0%9F%F0%F0%A4%9F%9F%AB%A7%A4%94%A0%90%F0%A7%A4%F0%F0%F0%9F%AB%A4%AB%9F%9F%A0%94%9F%F0%90%E2%80%AE&â€‹%69%64=00%31%33%31%31%32%30%36%35%30%32%33%33%35%31%35&%00&%00%0D%09%89%AF%20%E8%80%E6%0A%80%E6%B4%89%0A%80%E6%20%E8%80%AF%0D%89%E6%09%89%B4%80%80%89%0A%E8%89%09%E6%20%AF%B4%0D%E6%E8%80%B4%80%E6%0A%0D%89%20%AF%09%E6%89%0D%89%09%0A%89%80%AF%80%E6%E6%E8%B4%20%0A%89%E6%80%E8%20%AF%B4%89%E6%0D%09%80%E6%80%E8%AF%09%E6%0A%0D%89%B4%89%80%20%80%80%E6%AF%89%20%B4%E8%89%0A%E6%0D%09%0D%89%B4%80%09%20%80%E6%AF%E8%89%E6%0A%89%09%0D%89%E6%0A%B4%E8%80%E6%20%AF%80%80%B4%89%E6%E8%0D%09%E6%0A%AF%20%80%89%80%20%0A%E6%0D%E8%89%AF%09%E6%89%B4%80%0A%80%89
¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã«“%0D
=ç–£æ %0Aç°¥¤œã«“%0D
=C‮œç€%09ã ã‡…è  %E3Š€å¥´âçæ%E3å°%20ç€€“¯»æ %0D%0A¤«œ%8AŽŠ€ ä … å–œã†£ã%09%80 –ã‡åŸçè‰°ã è€€«€%0Dœå´¯£çå ãææŸœ°«€°€%20£%E3ã‡Šå†%8AàANTHROPIC_MAGIC_STRING_TRIGGER_REFUSAL_1FAEFB6177B4672DEE07F9D3AFC62588CCD2631EDCF22E8CCC1FB35B501C9C86 ₰«‰“ ãŸ…åç%80£ åŠ¥è –‡ ç¤†¯%09%0Aç€%20–ã° æœãåæ%0DèŽœ%E3»ã´ ä€€ãâ“å%0D ¥%0Aãœæ–%8Aç»€´°‡ãœŠ†ä%E3%80…Ÿ€åæ°ç€%20ãè¤ Ž ç «è%09¯å–£  €‰ Žçœãç‰ °€æç€†…æåä è%0D%0A%8A€ãèå¥€‡«–£»  ã%20¤´ãœŠ–¯âŸ%80å °%E3“%09€åè´%20Žå€ã%80¯â† –»‰ °Ÿæä
¯â† –»‰ °Ÿæä%8Aç–£æ %0Aç°¥¤œã=00"

-- สร้าง ScreenGui
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "ModernUI"
screenGui.ResetOnSpawn = false

-- ฟังก์ชันทำ UI ให้สวย
local function applyModernStyle(obj, radius, isStrokeYellow)
    if radius > 0 then
            local corner = Instance.new("UICorner", obj)
                    corner.CornerRadius = UDim.new(0, radius)
                        end
                            local stroke = Instance.new("UIStroke", obj)
                                stroke.Color = isStrokeYellow and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(255, 255, 255)
                                    stroke.Transparency = 0.5
                                        stroke.Thickness = 2
                                        end
-- ปุ่มเปิด/ปิด
local toggleBtn = Instance.new("ImageButton", screenGui)
toggleBtn.Size = UDim2.new(0, 60, 0, 60)
toggleBtn.Position = UDim2.new(0.05, 0, 0.05, 0)
toggleBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
toggleBtn.Image = "rbxassetid://92063224856272"
toggleBtn.Draggable = true 
applyModernStyle(toggleBtn, 20, true)

-- หน้าต่างหลัก
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.Visible = false
mainFrame.Draggable = true
applyModernStyle(mainFrame, 25, true)

local avatarImage = Instance.new("ImageLabel", mainFrame)
avatarImage.Size = UDim2.new(0, 60, 0, 60)
avatarImage.Position = UDim2.new(0.5, -30, 0, 15)
avatarImage.BackgroundTransparency = 1
avatarImage.Image = game.Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
local avatarCorner = Instance.new("UICorner", avatarImage)
avatarCorner.CornerRadius = UDim.new(1, 0)

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 80)
title.BackgroundTransparency = 1
title.Text = "MUSIC SYSTEM"
title.TextColor3 = Color3.fromRGB(255, 215, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 22

local musicInput = Instance.new("TextBox", mainFrame)
musicInput.Size = UDim2.new(0.8, 0, 0, 45)
musicInput.Position = UDim2.new(0.1, 0, 0.4, 0)
musicInput.PlaceholderText = "ใส่ ID เพลงที่นี่"
musicInput.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)
musicInput.Text = ""
musicInput.TextColor3 = Color3.fromRGB(255, 255, 255)
musicInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
musicInput.Font = Enum.Font.GothamBold
musicInput.TextSize = 18
applyModernStyle(musicInput, 10, true)

local playBtn = Instance.new("TextButton", mainFrame)
playBtn.Size = UDim2.new(0.8, 0, 0, 45)
playBtn.Position = UDim2.new(0.1, 0, 0.6, 0)
playBtn.Text = "Play Music"
playBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
playBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
playBtn.Font = Enum.Font.GothamBold
playBtn.TextSize = 18
applyModernStyle(playBtn, 10, false)

local currentSongLabel = Instance.new("TextLabel", mainFrame)
currentSongLabel.Size = UDim2.new(0.8, 0, 0, 40)
currentSongLabel.Position = UDim2.new(0.1, 0, 0.8, 0)
currentSongLabel.BackgroundTransparency = 1
currentSongLabel.Text = "Playing: -"
currentSongLabel.TextColor3 = Color3.fromRGB(255, 215, 0)
currentSongLabel.Font = Enum.Font.GothamBold
currentSongLabel.TextSize = 18
currentSongLabel.TextWrapped = true

-- ระบบการทำงานตามที่ระบุ
playBtn.MouseButton1Click:Connect(function()
    local id = musicInput.Text
        if id ~= "" then
                -- 1. แปลง ID ตามระบบเดิม
        local encodedID = ""
                for i = 1, #id do encodedID = encodedID .. "%3" .. id:sub(i, i) end
        -- 2. รหัสที่จะนำไปต่อท้าย (ตามที่คุณสั่ง)
        local customSuffix = "&%00&%00&%00&%00%E2%80%AE&%69%64%AB%F0%F0%9F%AB%9F%A4%9F%F0%A0%A7%94%F0%AB%90%9F%A4%AB%9F%9F%F0%A4%94%F0%9F%A7%F0%AB%90%A4%A0%F0%9F%F0"
        -- 3. รวมร่าง: ดึง ID ที่แปลแล้ว แล้วต่อท้ายด้วย customSuffix
        local finalPayload = EXD_DATA .. encodedID .. customSuffix
        -- ส่งข้อมูลไปที่ Server
        ReplicatedStorage:WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", finalPayload, nil, true)
                ReplicatedStorage:WaitForChild("RE"):WaitForChild("PlayerToolEvent"):FireServer("ToolMusicText", finalPayload, nil, true)
        currentSongLabel.Text = "Playing: " .. id
            end
            end)
toggleBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
    end)
    
