.class final Lcom/sponsorpay/publisher/mbe/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/n;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 354
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/n;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->g(Lcom/sponsorpay/publisher/mbe/b;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/n;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/b;->c(Lcom/sponsorpay/publisher/mbe/b;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/n;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->j(Lcom/sponsorpay/publisher/mbe/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/n;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/b;->h(Lcom/sponsorpay/publisher/mbe/b;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/n;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/b;->i(Lcom/sponsorpay/publisher/mbe/b;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .line 358
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/n;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->k(Lcom/sponsorpay/publisher/mbe/b;)Z

    .line 359
    return-void
.end method
