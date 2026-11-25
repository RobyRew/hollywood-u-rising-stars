.class final Lcom/leanplum/cs;
.super Lcom/leanplum/callbacks/ActionCallback;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/leanplum/cq;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/leanplum/callbacks/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/leanplum/ActionContext;)Z
    .locals 10
    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p1}, Lcom/leanplum/ActionContext;->c()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 223
    const-string/jumbo v0, "__leanplum_messaging__"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    const-string/jumbo v5, "__leanplum_local_message_%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 226
    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :goto_0
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/leanplum/LeanplumPushService;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    const-string/jumbo v0, "alarm"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/high16 v8, 0x8000000

    invoke-static {v8}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v9
    invoke-static {v4, v3, v5, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v3

    .line 240
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    move v0, v2

    .line 243
    :goto_1
    if-eqz v0, :cond_0

    .line 244
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Cancelled notification"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    :goto_2
    return v0

    .line 232
    :catch_0
    move-exception v5

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 249
    goto :goto_2

    :cond_1
    move v0, v1

    .line 242
    goto :goto_1
.end method
