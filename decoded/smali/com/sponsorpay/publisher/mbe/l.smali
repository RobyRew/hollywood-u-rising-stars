.class final Lcom/sponsorpay/publisher/mbe/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/l;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 219
    :pswitch_0
    const-string/jumbo v0, "SPBrandEngageClient"

    const-string/jumbo v1, "Timeout reached, canceling request..."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/l;->a:Lcom/sponsorpay/publisher/mbe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;I)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/l;->a:Lcom/sponsorpay/publisher/mbe/b;

    sget-object v1, Lcom/sponsorpay/publisher/b;->m:Lcom/sponsorpay/publisher/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
