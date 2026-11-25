.class final Lcom/sponsorpay/publisher/mbe/player/k;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/j;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/player/j;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/k;->a:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/k;->a:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/j;->b(Lcom/sponsorpay/publisher/mbe/player/j;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/k;->a:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/j;->a(Lcom/sponsorpay/publisher/mbe/player/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/k;->a:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/j;->a(Lcom/sponsorpay/publisher/mbe/player/j;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/b;->w:Lcom/sponsorpay/publisher/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const/4 v0, 0x0

    return v0
.end method
