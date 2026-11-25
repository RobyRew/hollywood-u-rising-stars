.class public Lcom/leanplum/ReceiveTransitionsIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "ReceiveTransitionsIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/location/h;->a(Landroid/content/Intent;)Lcom/google/android/gms/location/h;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->b()I

    move-result v0

    .line 31
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Location Client Error with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->c()I

    move-result v1

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->d()Ljava/util/List;

    move-result-object v2

    .line 35
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 37
    :cond_2
    invoke-static {}, Lcom/leanplum/cq;->b()Lcom/leanplum/bp;

    move-result-object v0

    check-cast v0, Lcom/leanplum/n;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/leanplum/n;->a(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
