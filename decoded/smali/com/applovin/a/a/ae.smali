.class Lcom/applovin/a/a/ae;
.super Landroid/webkit/WebView;


# instance fields
.field private final a:Lcom/applovin/c/l;

.field private b:Lcom/applovin/c/a;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/applovin/a/a/ah;Lcom/applovin/c/n;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/a/a/ae;->b:Lcom/applovin/c/a;

    iput-boolean v2, p0, Lcom/applovin/a/a/ae;->c:Z

    invoke-virtual {p2}, Lcom/applovin/c/n;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    invoke-virtual {p0, v2}, Lcom/applovin/a/a/ae;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/a/a/ae;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/applovin/a/a/ae;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/applovin/a/a/ad;

    invoke-direct {v0, p2}, Lcom/applovin/a/a/ad;-><init>(Lcom/applovin/c/n;)V

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/ae;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v2}, Lcom/applovin/a/a/ae;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/applovin/a/a/ae;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/ae;->setScrollBarStyle(I)V

    new-instance v0, Lcom/applovin/a/a/af;

    invoke-direct {v0, p0}, Lcom/applovin/a/a/af;-><init>(Lcom/applovin/a/a/ae;)V

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/ae;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/applovin/a/a/ag;

    invoke-direct {v0, p0}, Lcom/applovin/a/a/ag;-><init>(Lcom/applovin/a/a/ae;)V

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/ae;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method a()Lcom/applovin/c/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/ae;->b:Lcom/applovin/c/a;

    return-object v0
.end method

.method public a(Lcom/applovin/c/a;)V
    .locals 6

    iget-boolean v0, p0, Lcom/applovin/a/a/ae;->c:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/applovin/a/a/ae;->b:Lcom/applovin/c/a;

    :try_start_0
    check-cast p1, Lcom/applovin/a/b/a;

    const-string/jumbo v1, "/"

    invoke-virtual {p1}, Lcom/applovin/a/b/a;->j()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/a/a/ae;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v1, "AdWebView"

    const-string/jumbo v2, "AppLovinAd rendered"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v1, "AdWebView"

    const-string/jumbo v2, "Ad can not be loaded in a destroyed web view"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/a/ae;->c:Z

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v1, "AdWebView"

    const-string/jumbo v2, "Web view destroyed"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v2, "AdWebView"

    const-string/jumbo v3, "destroy() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v2, "AdWebView"

    const-string/jumbo v3, "onFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v2, "AdWebView"

    const-string/jumbo v3, "onWindowFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v2, "AdWebView"

    const-string/jumbo v3, "onWindowVisibilityChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/ae;->a:Lcom/applovin/c/l;

    const-string/jumbo v2, "AdWebView"

    const-string/jumbo v3, "requestFocus() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
