.class final Lcom/leanplum/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/LeanplumPushRegistrationService;


# direct methods
.method constructor <init>(Lcom/leanplum/LeanplumPushRegistrationService;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/leanplum/p;->a:Lcom/leanplum/LeanplumPushRegistrationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/p;->a:Lcom/leanplum/LeanplumPushRegistrationService;

    invoke-static {v0}, Lcom/google/android/gms/iid/a;->b(Landroid/content/Context;)Lcom/google/android/gms/iid/a;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/leanplum/LeanplumPushService;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GCM"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/iid/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/leanplum/LeanplumPushRegistrationService;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/leanplum/LeanplumPushRegistrationService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "WARNING: It appears your app is registering with GCM using multiple GCM sender ids. Please be sure to call LeanplumPushService.setGcmSenderIds() with all of the GCM sender ids that you use, not just the one that you use with Leanplum. Otherwise, GCM push notifications may not work consistently."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/leanplum/LeanplumPushRegistrationService;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/leanplum/p;->a:Lcom/leanplum/LeanplumPushRegistrationService;

    invoke-virtual {v1}, Lcom/leanplum/LeanplumPushRegistrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/leanplum/LeanplumPushService;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "GCM service is not available. Will try to register again next time the app starts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v1, "TIMEOUT"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Retrieval of GCM registration token timed out. Will try to register again next time the app starts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_3
    const-string/jumbo v1, "INVALID_SENDER"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "The GCM sender account is not recognized. Please be sure to call LeanplumPushService.setGcmSenderId() with a valid GCM sender id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_4
    const-string/jumbo v1, "AUTHENTICATION_FAILED"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Bad Google Account password."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_5
    const-string/jumbo v1, "PHONE_REGISTRATION_ERROR"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "This phone doesn\'t currently support GCM."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_6
    const-string/jumbo v1, "TOO_MANY_REGISTRATIONS"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "This phone has more than the allowed number of apps that are registered with GCM."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    :cond_7
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Failed to complete registration token refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Failed to complete registration token refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
