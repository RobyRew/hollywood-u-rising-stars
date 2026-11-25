.class final Lcom/sponsorpay/publisher/mbe/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/m;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 249
    const-string/jumbo v0, "SPBrandEngageClient"

    const-string/jumbo v1, "Unknown message what field"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 235
    :sswitch_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/m;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->c(Lcom/sponsorpay/publisher/mbe/b;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/m;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/b;->c(Lcom/sponsorpay/publisher/mbe/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/sponsorpay/c/t;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 239
    const-string/jumbo v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/m;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->d(Lcom/sponsorpay/publisher/mbe/b;)Landroid/webkit/WebView;

    .line 241
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/m;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->e(Lcom/sponsorpay/publisher/mbe/b;)Landroid/app/Activity;

    goto :goto_0

    .line 246
    :sswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/m;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->f(Lcom/sponsorpay/publisher/mbe/b;)V

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x20a -> :sswitch_1
    .end sparse-switch
.end method
