.class Lcom/pixelberrystudios/darthkitty/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/DKSponsorPay;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/DKSponsorPay;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/at;->a:Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/at;->a:Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->a(Lcom/pixelberrystudios/darthkitty/DKSponsorPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->getInstance()Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/a;->a(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string/jumbo v0, "DKSponsorPay"

    const-string/jumbo v1, "cannot get sponsorpay ads right now"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method
