.class public Lcom/pixelberrystudios/iab/Purchase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/pixelberrystudios/iab/Purchase;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/pixelberrystudios/iab/Purchase;->i:Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pixelberrystudios/iab/Purchase;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pixelberrystudios/iab/Purchase;->b:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pixelberrystudios/iab/Purchase;->c:Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pixelberrystudios/iab/Purchase;->d:Ljava/lang/String;

    .line 46
    const-string/jumbo v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pixelberrystudios/iab/Purchase;->e:J

    .line 47
    const-string/jumbo v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pixelberrystudios/iab/Purchase;->f:I

    .line 48
    const-string/jumbo v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pixelberrystudios/iab/Purchase;->g:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "token"

    const-string/jumbo v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->h:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/pixelberrystudios/iab/Purchase;->j:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/pixelberrystudios/iab/Purchase;->a:Ljava/lang/String;

    .line 57
    iput-object p9, p0, Lcom/pixelberrystudios/iab/Purchase;->i:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/pixelberrystudios/iab/Purchase;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/pixelberrystudios/iab/Purchase;->c:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/pixelberrystudios/iab/Purchase;->d:Ljava/lang/String;

    .line 61
    iput-wide p5, p0, Lcom/pixelberrystudios/iab/Purchase;->e:J

    .line 62
    iput p7, p0, Lcom/pixelberrystudios/iab/Purchase;->f:I

    .line 63
    iput-object p8, p0, Lcom/pixelberrystudios/iab/Purchase;->g:Ljava/lang/String;

    .line 64
    iput-object p9, p0, Lcom/pixelberrystudios/iab/Purchase;->h:Ljava/lang/String;

    .line 65
    iput-object p10, p0, Lcom/pixelberrystudios/iab/Purchase;->j:Ljava/lang/String;

    .line 66
    iput-object p11, p0, Lcom/pixelberrystudios/iab/Purchase;->k:Ljava/lang/String;

    .line 67
    iput-boolean p12, p0, Lcom/pixelberrystudios/iab/Purchase;->l:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSandbox()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/Purchase;->l:Z

    return v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/pixelberrystudios/iab/Purchase;->f:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/pixelberrystudios/iab/Purchase;->e:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pixelberrystudios/iab/Purchase;->k:Ljava/lang/String;

    return-object v0
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/pixelberrystudios/iab/Purchase;->b:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseState(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/pixelberrystudios/iab/Purchase;->f:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/pixelberrystudios/iab/Purchase;->h:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/iab/Purchase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/iab/Purchase;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
