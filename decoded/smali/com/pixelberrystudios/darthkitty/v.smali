.class final Lcom/pixelberrystudios/darthkitty/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput p1, p0, Lcom/pixelberrystudios/darthkitty/v;->a:I

    iput-object p2, p0, Lcom/pixelberrystudios/darthkitty/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pixelberrystudios/darthkitty/v;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/pixelberrystudios/darthkitty/v;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/pixelberrystudios/darthkitty/v;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/pixelberrystudios/darthkitty/v;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 292
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->d:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/pixelberrystudios/darthkitty/w;

    invoke-direct {v2, p0}, Lcom/pixelberrystudios/darthkitty/w;-><init>(Lcom/pixelberrystudios/darthkitty/v;)V

    invoke-virtual {v1, v0, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 310
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v2, p0, Lcom/pixelberrystudios/darthkitty/v;->b:Ljava/lang/String;

    .line 311
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    iget-object v2, p0, Lcom/pixelberrystudios/darthkitty/v;->c:Ljava/lang/String;

    .line 312
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/pixelberrystudios/darthkitty/v;->d:Ljava/lang/String;

    .line 313
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/pixelberrystudios/darthkitty/v;->e:Ljava/lang/String;

    .line 314
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/pixelberrystudios/darthkitty/v;->f:Ljava/lang/String;

    .line 315
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 318
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 323
    return-void
.end method
