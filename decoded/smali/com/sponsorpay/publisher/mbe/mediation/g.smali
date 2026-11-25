.class final Lcom/sponsorpay/publisher/mbe/mediation/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/mediation/g;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string/jumbo v0, "SPBrandEngageMediationJSInterface"

    const-string/jumbo v1, "Timeout reached, returning \"false\" as default"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/g;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1639
        :pswitch_0
    .end packed-switch
.end method
