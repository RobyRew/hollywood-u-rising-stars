.class Lcom/pixelberrystudios/googleplay/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/AmazonGamesCallback;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/d;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceNotReady(Lcom/amazon/ags/api/AmazonGamesStatus;)V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AmazonGamesClient service not ready: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/ags/api/AmazonGamesStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/d;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;

    .line 194
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->clearGamesClient()V

    .line 195
    return-void
.end method

.method public onServiceReady(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1

    .prologue
    .line 184
    const-string/jumbo v0, "AmazonGamesClient service ready"

    invoke-static {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->b(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/d;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-static {v0, p1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;

    .line 186
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/d;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-static {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->a(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;)Lcom/amazon/ags/api/AmazonGamesClient;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->setGamesClient(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 187
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->setPopupLocationTopCenter()V

    .line 188
    return-void
.end method
