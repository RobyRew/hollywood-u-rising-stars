.class final Lcom/sponsorpay/publisher/mbe/u;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 864
    const-string/jumbo v0, "SPBrandEngageClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "js alert - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string/jumbo v0, "SPBrandEngageClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "js alert - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->q(Lcom/sponsorpay/publisher/mbe/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0, v4}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;Z)Z

    .line 1874
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->g(Lcom/sponsorpay/publisher/mbe/b;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->j(Lcom/sponsorpay/publisher/mbe/b;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1875
    sget-object v0, Lcom/sponsorpay/publisher/b;->p:Lcom/sponsorpay/publisher/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/sponsorpay/publisher/mbe/x;

    invoke-direct {v3, p0}, Lcom/sponsorpay/publisher/mbe/x;-><init>(Lcom/sponsorpay/publisher/mbe/u;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "Cancel"

    new-instance v3, Lcom/sponsorpay/publisher/mbe/w;

    invoke-direct {v3, p0}, Lcom/sponsorpay/publisher/mbe/w;-><init>(Lcom/sponsorpay/publisher/mbe/u;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/sponsorpay/publisher/mbe/v;

    invoke-direct {v2, p0}, Lcom/sponsorpay/publisher/mbe/v;-><init>(Lcom/sponsorpay/publisher/mbe/u;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1893
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 866
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 867
    return v4

    .line 1874
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->g(Lcom/sponsorpay/publisher/mbe/b;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method
