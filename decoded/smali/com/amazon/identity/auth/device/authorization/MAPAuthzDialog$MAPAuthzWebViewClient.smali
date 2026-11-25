.class Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    .line 177
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 178
    return-void
.end method

.method private cleanCookies(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 243
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/token/MAPCookie;

    const-string/jumbo v1, "at-main"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ".amazon.com"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/token/MAPCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->clearCookieInCookieManager(Landroid/content/Context;Lorg/apache/http/cookie/Cookie;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to clear cookies : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDevo()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 278
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 279
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 281
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "host.type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string/jumbo v2, "development"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPageFinished"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$100(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$200(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPageStarted"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 195
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$100(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$200(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " desc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    .line 257
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->isDevo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Hitting devo"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 267
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 268
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->dismiss()V

    .line 269
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$600(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "SSL Error"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_WEBVIEW_SSL:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shouldOverrideUrlLoading"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p2, :cond_2

    const-string/jumbo v2, "amzn://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Processing redirectUrl"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$100(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$200(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;Z)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->dismiss()V

    .line 210
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->cleanCookies(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    :try_start_0
    new-instance v1, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseParser;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseParser;-><init>()V

    .line 215
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$400(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$500(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseParser;->extractResultsBundle(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 216
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$600(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onCancel(Landroid/os/Bundle;)V

    .line 236
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$600(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog$MAPAuthzWebViewClient;->this$0:Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$600(Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;)Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {p2}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->isMAPUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 231
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/MAPAuthzDialog;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "URL clicked - override"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 236
    goto :goto_0
.end method
