.class public Lcom/pixelberrystudios/hssandroid/NotificationsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x3e8

    sput v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->a:I

    .line 26
    const/16 v0, 0x7d0

    sput v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->b:I

    .line 27
    const/16 v0, 0xbb8

    sput v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->c:I

    .line 30
    const-string/jumbo v0, "EXTRA_KEY_TITLE"

    sput-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->d:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "EXTRA_KEY_MESSAGE"

    sput-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->e:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "EXTRA_KEY_BUTTON"

    sput-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->f:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "EXTRA_KEY_SOUND_NAME"

    sput-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->g:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "EXTRA_KEY_NOTIFICATION_PROPERTIES"

    sput-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-static {p0}, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected static native appDelegateNotificationReceived([Ljava/lang/String;Z)V
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelNotifications()V
    .locals 7
    .prologue
    const/high16 v5, 0x8000000

    .line 184
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const-string/jumbo v1, "notification"

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 186
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 188
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const-class v2, Lcom/pixelberrystudios/hssandroid/NotificationsHelper$NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    sget-object v1, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    sget v2, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->c:I

    .line 190
    invoke-static {v5}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v6
    invoke-static {v1, v2, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1

    .line 192
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const-class v3, Lcom/pixelberrystudios/hssandroid/NotificationsHelper$NotificationReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    sget-object v2, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    sget v3, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->b:I

    .line 194
    invoke-static {v5}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v6
    invoke-static {v2, v3, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v2

    .line 196
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const-class v4, Lcom/pixelberrystudios/hssandroid/NotificationsHelper$NotificationReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    sget-object v3, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    sget v4, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->a:I

    .line 198
    invoke-static {v5}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v6
    invoke-static {v3, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v3

    .line 200
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 202
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 204
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 205
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->a:I

    return v0
.end method

.method public static onResume()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 124
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 126
    if-eqz v4, :cond_3

    .line 127
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 129
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->b(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v7, v2, 0x1

    aput-object v0, v5, v2

    .line 134
    add-int/lit8 v2, v7, 0x1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v7

    :cond_0
    move v0, v2

    move v2, v0

    .line 136
    goto :goto_0

    .line 137
    :cond_1
    invoke-static {v5, v3}, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->appDelegateNotificationReceived([Ljava/lang/String;Z)V

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 139
    :cond_3
    const-string/jumbo v0, "No notification properties"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static scheduleNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Z
    .locals 8
    .prologue
    const/4 v2, 0x1

    .line 148
    sget v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->c:I

    if-eq p7, v0, :cond_0

    sget v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->b:I

    if-eq p7, v0, :cond_0

    sget v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->a:I

    if-eq p7, v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleNotification invalid alarm code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->b(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 153
    :cond_0
    new-instance v3, Landroid/content/Intent;

    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const-class v1, Lcom/pixelberrystudios/hssandroid/NotificationsHelper$NotificationReceiver;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 164
    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 166
    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_2
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 171
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const/high16 v1, 0x8000000

    .line 172
    invoke-static {v1}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I
    move-result v1
    invoke-static {v0, p7, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1

    .line 175
    sget-object v0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 176
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p0

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    move v0, v2

    .line 177
    goto :goto_0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 118
    sput-object p0, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->i:Landroid/app/Activity;

    .line 119
    return-void
.end method

.method public static setBadgeNumber(I)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
