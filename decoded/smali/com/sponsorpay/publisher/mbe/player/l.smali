.class final Lcom/sponsorpay/publisher/mbe/player/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/j;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/player/j;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/l;->a:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/l;->a:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/j;->c(Lcom/sponsorpay/publisher/mbe/player/j;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 167
    return-void
.end method
