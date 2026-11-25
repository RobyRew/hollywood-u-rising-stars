.class Lcom/helpshift/e/y;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/e/w;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/helpshift/e/w;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/e/w;Lcom/helpshift/e/x;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/helpshift/e/y;-><init>(Lcom/helpshift/e/w;)V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/helpshift/e/y;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/helpshift/e/y;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/helpshift/e/y;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->d(Lcom/helpshift/e/w;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    sget v1, Lcom/helpshift/h;->y:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/e/y;->c:Landroid/view/View;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/helpshift/e/y;->c:Landroid/view/View;

    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 193
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 143
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->b(Lcom/helpshift/e/w;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v1}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;Landroid/view/View;)Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->b(Lcom/helpshift/e/w;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->c(Lcom/helpshift/e/w;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 155
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/e/w;->setVisibility(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->d(Lcom/helpshift/e/w;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/ActionBarActivity;

    invoke-virtual {v0}, Lcom/helpshift/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 188
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->d(Lcom/helpshift/e/w;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Lcom/helpshift/app/ActionBarActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/helpshift/e/w;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->b(Lcom/helpshift/e/w;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0, p1}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;Landroid/view/View;)Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0, p2}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 138
    iget-object v0, p0, Lcom/helpshift/e/y;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->b(Lcom/helpshift/e/w;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
