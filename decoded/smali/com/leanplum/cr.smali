.class final Lcom/leanplum/cr;
.super Lcom/leanplum/callbacks/ActionCallback;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/leanplum/cq;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/leanplum/callbacks/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/leanplum/ActionContext;)Z
    .locals 14
    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/leanplum/ActionContext;->c()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-virtual {p1}, Lcom/leanplum/ActionContext;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 117
    :goto_0
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_2

    .line 118
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid notification countdown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 210
    :goto_1
    return v0

    .line 109
    :cond_0
    invoke-static {}, Lcom/leanplum/cg;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 111
    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "Leanplum"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find message options for ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 113
    goto :goto_1

    .line 115
    :cond_1
    const-string/jumbo v1, "countdown"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    add-long v8, v2, v0

    .line 123
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 124
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/leanplum/LeanplumLocalPushListenerService;

    invoke-direct {v10, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string/jumbo v0, "alarm"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 130
    const-string/jumbo v1, "__leanplum_messaging__"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 132
    const-string/jumbo v1, "__leanplum_local_message_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v11, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 134
    cmp-long v1, v2, v12

    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v1, v2, v12

    if-lez v1, :cond_4

    .line 135
    cmp-long v1, v2, v8

    if-gez v1, :cond_3

    move v0, v4

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    cmp-long v1, v2, v8

    if-ltz v1, :cond_4

    .line 138
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v2}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v2
    invoke-static {v7, v1, v10, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 146
    :cond_4
    const-string/jumbo v1, "Advanced options.Data"

    invoke-virtual {p1, v1}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 147
    if-eqz v1, :cond_5

    .line 148
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move v0, v4

    .line 210
    goto/16 :goto_1

    .line 154
    :cond_5
    :try_start_1
    const-string/jumbo v1, "Open action"

    invoke-virtual {p1, v1}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v3, "Advanced options.Mute inside app"

    invoke-virtual {p1, v3}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 157
    if-eqz v1, :cond_a

    .line 158
    if-eqz v2, :cond_9

    .line 159
    const-string/jumbo v1, "_lpu"

    invoke-virtual {v10, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :goto_3
    const-string/jumbo v1, "Message"

    invoke-virtual {p1, v1}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string/jumbo v2, "lp_message"

    if-eqz v1, :cond_c

    :goto_4
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "Android options.Collapse key"

    invoke-virtual {p1, v1}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_6

    .line 179
    const-string/jumbo v2, "collapseKey"

    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v2, "Android options.Delay while idle"

    invoke-virtual {p1, v2}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    const-string/jumbo v2, "delayWhileIdle"

    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v2}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v2
    invoke-static {v7, v1, v10, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 196
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "__leanplum_local_message_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :try_start_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :goto_5
    :try_start_3
    sget-boolean v0, Lcom/leanplum/cu;->k:Z

    if-eqz v0, :cond_8

    .line 205
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Scheduled notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v5

    .line 207
    goto/16 :goto_1

    .line 161
    :cond_9
    const-string/jumbo v1, "_lpm"

    invoke-virtual {v10, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 164
    :cond_a
    if-eqz v2, :cond_b

    .line 165
    const-string/jumbo v1, "_lpv"

    invoke-virtual {v10, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 167
    :cond_b
    const-string/jumbo v1, "_lpn"

    invoke-virtual {v10, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 173
    :cond_c
    const-string/jumbo v1, "Push message goes here."

    goto :goto_4

    .line 201
    :catch_1
    move-exception v1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5
.end method
