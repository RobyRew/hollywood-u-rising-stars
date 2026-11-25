.class public Lcom/pixelberrystudios/googleplay/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1015
    const/16 v0, -0x64

    invoke-direct {p0, p1, v0}, Lcom/pixelberrystudios/googleplay/c;-><init>(II)V

    .line 1016
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const/4 v0, 0x0

    iput v0, p0, Lcom/pixelberrystudios/googleplay/c;->a:I

    .line 999
    const/16 v0, -0x64

    iput v0, p0, Lcom/pixelberrystudios/googleplay/c;->b:I

    .line 1010
    iput p1, p0, Lcom/pixelberrystudios/googleplay/c;->a:I

    .line 1011
    iput p2, p0, Lcom/pixelberrystudios/googleplay/c;->b:I

    .line 1012
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/pixelberrystudios/googleplay/c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/pixelberrystudios/googleplay/c;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SignInFailureReason(serviceErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pixelberrystudios/googleplay/c;->a:I

    invoke-static {v1}, Lcom/pixelberrystudios/googleplay/a;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/pixelberrystudios/googleplay/c;->b:I

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, ")"

    .line 1022
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",activityResultCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/pixelberrystudios/googleplay/c;->b:I

    .line 1022
    invoke-static {v2}, Lcom/pixelberrystudios/googleplay/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
