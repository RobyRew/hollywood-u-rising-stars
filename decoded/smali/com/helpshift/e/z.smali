.class Lcom/helpshift/e/z;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/e/w;


# direct methods
.method private constructor <init>(Lcom/helpshift/e/w;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/e/w;Lcom/helpshift/e/x;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/helpshift/e/z;-><init>(Lcom/helpshift/e/w;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->e(Lcom/helpshift/e/w;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarActivity;->c(Z)V

    .line 200
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->f(Lcom/helpshift/e/w;)Lcom/helpshift/HSQuestionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->a()V

    .line 201
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->g(Lcom/helpshift/e/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xa

    if-ne p2, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;Z)Z

    .line 209
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->f(Lcom/helpshift/e/w;)Lcom/helpshift/HSQuestionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->c()V

    .line 211
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->e(Lcom/helpshift/e/w;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/app/ActionBarActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 244
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/"

    const-string/jumbo v4, "_"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    :try_start_1
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :goto_1
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "MalformedURLException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "FileNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_0
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v2, v0}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v2, v0, v1}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;Ljava/net/URL;Ljava/io/File;)V

    goto :goto_2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v2}, Lcom/helpshift/e/w;->e(Lcom/helpshift/e/w;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 222
    const-string/jumbo v3, "p"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v0, "u"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v0, "fl"

    invoke-static {v0, v2}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v0}, Lcom/helpshift/e/w;->e(Lcom/helpshift/e/w;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarActivity;->startActivity(Landroid/content/Intent;)V

    .line 229
    const/4 v0, 0x1

    .line 234
    :goto_1
    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/helpshift/e/z;->a:Lcom/helpshift/e/w;

    invoke-static {v0, p2}, Lcom/helpshift/e/w;->a(Lcom/helpshift/e/w;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
