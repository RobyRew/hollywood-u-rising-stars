.class public Lcom/pixelberrystudios/darthkitty/DKSponsorPay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/f;


# static fields
.field public static final REQUEST_CODE_SPONSOR_PAY_VIDEO:I = 0x64

.field private static a:Lcom/pixelberrystudios/darthkitty/DKSponsorPay;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/sponsorpay/publisher/mbe/b;->a:Lcom/sponsorpay/publisher/mbe/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->a(Z)V

    .line 56
    return-void
.end method

.method public static native DKSponsorPayOnChangeStatusCloseAborted()V
.end method

.method public static native DKSponsorPayOnChangeStatusCloseFinished()V
.end method

.method public static native DKSponsorPayOnChangeStatusError()V
.end method

.method protected static native DKSponsorPayOnSPBrandEngageOffersAvailable()V
.end method

.method protected static native DKSponsorPayOnSPBrandEngageOffersNotAvailable()V
.end method

.method static synthetic a(Lcom/pixelberrystudios/darthkitty/DKSponsorPay;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must call setActivity()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/pixelberrystudios/darthkitty/DKSponsorPay;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->a:Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->a:Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    .line 45
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->a:Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    return-object v0
.end method


# virtual methods
.method public canStartOffers()Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/sponsorpay/publisher/mbe/b;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/b;->c()Z

    move-result v0

    .line 132
    return v0
.end method

.method public onSPBrandEngageError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    const-string/jumbo v0, "DKSponsorPay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPBrandEngage - an error occured:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->c:Landroid/content/Intent;

    .line 157
    return-void
.end method

.method public onSPBrandEngageOffersAvailable(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 161
    const-string/jumbo v0, "DKSponsorPay"

    const-string/jumbo v1, "SPBrandEngage - intent available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->c:Landroid/content/Intent;

    .line 163
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnSPBrandEngageOffersAvailable()V

    .line 164
    return-void
.end method

.method public onSPBrandEngageOffersNotAvailable()V
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "DKSponsorPay"

    const-string/jumbo v1, "SPBrandEngage - no offers for the moment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnSPBrandEngageOffersNotAvailable()V

    .line 170
    return-void
.end method

.method public requestOffers()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->a()V

    .line 118
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/at;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/at;-><init>(Lcom/pixelberrystudios/darthkitty/DKSponsorPay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    .line 60
    return-void
.end method

.method public start()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->a()V

    .line 68
    const-string/jumbo v0, ""

    .line 71
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 76
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "PROJ_HSS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    :try_start_1
    const-string/jumbo v4, "DKSponsorPay"

    const-string/jumbo v5, "found PROJ_HSS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "PROJ_HWU"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    const-string/jumbo v1, "DKSponsorPay"

    const-string/jumbo v4, "found PROJ_HWU"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    .line 85
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "must define either PROJ_HSS or PROJ_HWU in application metadata"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 99
    :cond_4
    if-eqz v3, :cond_6

    .line 100
    :try_start_2
    const-string/jumbo v1, "20006"

    const/4 v2, 0x0

    const-string/jumbo v3, "dc559d94d3232706be85d9ad97dec2a1"

    iget-object v4, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    invoke-static {v1, v2, v3, v4}, Lcom/sponsorpay/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_5
    :goto_1
    return-object v0

    .line 101
    :cond_6
    if-eqz v2, :cond_5

    .line 102
    const-string/jumbo v1, "25757"

    const/4 v2, 0x0

    const-string/jumbo v3, "77da43ddd6a827cf02711b1730b4857a"

    iget-object v4, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    invoke-static {v1, v2, v3, v4}, Lcom/sponsorpay/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 105
    :catch_1
    move-exception v1

    .line 106
    const-string/jumbo v2, "DKSponsorPay"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    :catch_2
    move-exception v1

    move v3, v2

    goto :goto_0
.end method

.method public startViewingOffer()V
    .locals 3

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->a()V

    .line 140
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->c:Landroid/content/Intent;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string/jumbo v0, "DKSponsorPay"

    const-string/jumbo v1, "no intent available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
