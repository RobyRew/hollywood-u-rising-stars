.class public final Lcom/helpshift/e/w;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/helpshift/e/y;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Lcom/helpshift/HSQuestionFragment;

.field private i:Lcom/helpshift/app/ActionBarActivity;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/helpshift/e/w;->a(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/helpshift/e/w;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/e/w;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/helpshift/e/w;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/e/w;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/helpshift/e/w;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/e/w;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/helpshift/e/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/e/w;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 53
    iput-object p2, p0, Lcom/helpshift/e/w;->h:Lcom/helpshift/HSQuestionFragment;

    .line 54
    iput-object p1, p0, Lcom/helpshift/e/w;->a:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/helpshift/e/w;->a:Landroid/content/Context;

    check-cast v0, Lcom/helpshift/app/ActionBarActivity;

    iput-object v0, p0, Lcom/helpshift/e/w;->i:Lcom/helpshift/app/ActionBarActivity;

    .line 57
    iget-object v0, p0, Lcom/helpshift/e/w;->i:Lcom/helpshift/app/ActionBarActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/h;->x:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/helpshift/e/w;->g:Landroid/widget/FrameLayout;

    .line 58
    iget-object v0, p0, Lcom/helpshift/e/w;->g:Landroid/widget/FrameLayout;

    sget v1, Lcom/helpshift/g;->L:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/helpshift/e/w;->f:Landroid/widget/FrameLayout;

    .line 59
    iget-object v0, p0, Lcom/helpshift/e/w;->i:Lcom/helpshift/app/ActionBarActivity;

    sget v1, Lcom/helpshift/g;->M:I

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/helpshift/e/w;->d:Landroid/widget/FrameLayout;

    .line 61
    new-instance v0, Lcom/helpshift/e/y;

    invoke-direct {v0, p0, v3}, Lcom/helpshift/e/y;-><init>(Lcom/helpshift/e/w;Lcom/helpshift/e/x;)V

    iput-object v0, p0, Lcom/helpshift/e/w;->b:Lcom/helpshift/e/y;

    .line 62
    iget-object v0, p0, Lcom/helpshift/e/w;->b:Lcom/helpshift/e/y;

    invoke-virtual {p0, v0}, Lcom/helpshift/e/w;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    new-instance v0, Lcom/helpshift/e/z;

    invoke-direct {v0, p0, v3}, Lcom/helpshift/e/z;-><init>(Lcom/helpshift/e/w;Lcom/helpshift/e/x;)V

    invoke-virtual {p0, v0}, Lcom/helpshift/e/w;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    invoke-virtual {p0}, Lcom/helpshift/e/w;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 68
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 82
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 85
    iget-object v0, p0, Lcom/helpshift/e/w;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/helpshift/e/w;Ljava/net/URL;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/helpshift/e/w;->a(Ljava/net/URL;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/net/URL;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 287
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 288
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    const/16 v0, 0x1f4

    :try_start_1
    new-array v0, v0, [B

    .line 293
    :goto_0
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 294
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 298
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "saveFile Exception :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    :goto_1
    return-void

    .line 297
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 298
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/helpshift/e/w;Ljava/net/URL;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/e/w;->a(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/helpshift/e/w;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/helpshift/e/w;->k:Z

    return p1
.end method

.method private a(Ljava/net/URL;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 269
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "image/jpeg"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string/jumbo v4, "image/png"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "image/gif"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "image/x-png"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "image/x-citrix-pjpeg"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "image/x-citrix-gif"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "image/pjpeg"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 278
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 282
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "openConnection() Exception :"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/helpshift/e/w;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/e/w;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/helpshift/e/w;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/e/w;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic d(Lcom/helpshift/e/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/e/w;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/helpshift/e/w;)Lcom/helpshift/app/ActionBarActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/e/w;->i:Lcom/helpshift/app/ActionBarActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/helpshift/e/w;)Lcom/helpshift/HSQuestionFragment;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/e/w;->h:Lcom/helpshift/HSQuestionFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/helpshift/e/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/e/w;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/helpshift/e/w;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helpshift/e/w;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/helpshift/e/w;->b:Lcom/helpshift/e/y;

    invoke-virtual {v0}, Lcom/helpshift/e/y;->onHideCustomView()V

    .line 103
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/helpshift/e/w;->c:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/helpshift/e/w;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-boolean v0, p0, Lcom/helpshift/e/w;->k:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/helpshift/e/w;->h:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 114
    :goto_0
    const/4 v0, 0x1

    .line 117
    :goto_1
    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/e/w;->goBack()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method
