.class Lcom/pixelberrystudios/hssandroid/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/f;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/o;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/device/iap/model/RequestId;)V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Insert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->insertRequestId(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public b(Lcom/amazon/device/iap/model/RequestId;)Z
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Contains? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->containsRequestId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
