.class final Lcom/sponsorpay/publisher/interstitial/a/c;
.super Lcom/sponsorpay/c/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/interstitial/a/a;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/interstitial/a/a;)V
    .locals 1

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/a/c;->a:Lcom/sponsorpay/publisher/interstitial/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sponsorpay/c/g;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/a/c;->a()Landroid/app/Activity;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a/c;->a:Lcom/sponsorpay/publisher/interstitial/a/a;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/a/a;->d(Lcom/sponsorpay/publisher/interstitial/a/a;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/a/c;->e(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a/c;->a:Lcom/sponsorpay/publisher/interstitial/a/a;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/a/a;->e(Lcom/sponsorpay/publisher/interstitial/a/a;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/interstitial/a/c;->g(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected final a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "offerwall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a/c;->a:Lcom/sponsorpay/publisher/interstitial/a/a;

    invoke-static {v0, p2}, Lcom/sponsorpay/publisher/interstitial/a/a;->a(Lcom/sponsorpay/publisher/interstitial/a/a;Landroid/net/Uri;)V

    .line 194
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 204
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "Interstitials WebView triggered an error. Error code: %d, error description: %s. Failing URL: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "MarketPlaceInterstitial"

    invoke-static {v1, v0}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/a/c;->a:Lcom/sponsorpay/publisher/interstitial/a/a;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/interstitial/a/a;->a(Lcom/sponsorpay/publisher/interstitial/a/a;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/sponsorpay/c/g;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/interstitial/a/c;->g(Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
