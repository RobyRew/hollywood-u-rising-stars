.class final Lcom/pixelberrystudios/darthkitty/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmazonAuthCompleted(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 164
    const-string/jumbo v0, "DKAmazon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAmazonAuthCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-nez p1, :cond_0

    .line 166
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    .line 172
    :goto_0
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getInstance()Lcom/pixelberrystudios/darthkitty/DKAmazon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->scheduleAuthenticationCallback()V

    .line 173
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    goto :goto_0
.end method
