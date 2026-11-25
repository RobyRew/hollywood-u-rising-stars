.class Lcom/pixelberrystudios/darthkitty/am;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

.field private b:Z

.field private c:I

.field private d:J

.field private e:I


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/DKGooglePlay;ZI)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/am;->a:Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 120
    iput-boolean p2, p0, Lcom/pixelberrystudios/darthkitty/am;->b:Z

    .line 121
    iput p3, p0, Lcom/pixelberrystudios/darthkitty/am;->e:I

    .line 122
    iput p3, p0, Lcom/pixelberrystudios/darthkitty/am;->c:I

    .line 123
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pixelberrystudios/darthkitty/am;->d:J

    .line 193
    invoke-virtual {p0}, Lcom/pixelberrystudios/darthkitty/am;->a()V

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 126
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 127
    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 128
    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/c;->b(Lcom/google/android/gms/common/api/n;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/pixelberrystudios/darthkitty/am;->b()V

    .line 177
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/c;->b(Lcom/google/android/gms/common/api/n;)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempting to authenticate with email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 137
    :try_start_0
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audience:server:client_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pixelberrystudios/darthkitty/am;->a:Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    iget-object v3, v3, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->e:J

    .line 139
    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->saveAccountPreference(Ljava/lang/String;)V

    .line 143
    iget-boolean v1, p0, Lcom/pixelberrystudios/darthkitty/am;->b:Z

    if-eqz v1, :cond_2

    .line 144
    const-string/jumbo v1, "authenticateSuccess"

    invoke-static {v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->c:Ljava/lang/String;

    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->authenticateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got oauth token for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    iget v0, p0, Lcom/pixelberrystudios/darthkitty/am;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pixelberrystudios/darthkitty/am;->c:I

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pixelberrystudios/darthkitty/am;->d:J

    sub-long/2addr v0, v2

    .line 154
    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/pixelberrystudios/darthkitty/am;->e:I

    iget v1, p0, Lcom/pixelberrystudios/darthkitty/am;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 155
    const-string/jumbo v0, "Oauth timeout reached - exiting"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/pixelberrystudios/darthkitty/am;->b()V

    goto/16 :goto_0

    .line 159
    :cond_3
    iget v0, p0, Lcom/pixelberrystudios/darthkitty/am;->c:I

    if-gtz v0, :cond_4

    .line 160
    const-string/jumbo v0, "Max retries reached - exiting"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/pixelberrystudios/darthkitty/am;->b()V

    goto/16 :goto_0

    .line 167
    :cond_4
    const-wide/16 v0, 0x5dc

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/pixelberrystudios/darthkitty/am;->a()V

    goto/16 :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    const-string/jumbo v1, "Error in authentication:"

    invoke-static {v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    invoke-virtual {p0}, Lcom/pixelberrystudios/darthkitty/am;->b()V

    goto/16 :goto_0

    .line 168
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 180
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->d:Ljava/lang/String;

    .line 181
    iget-boolean v0, p0, Lcom/pixelberrystudios/darthkitty/am;->b:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showOauthErrorDialog()V

    .line 185
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->g()V

    .line 188
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/darthkitty/am;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
