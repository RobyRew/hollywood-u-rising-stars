.class Lcom/pixelberrystudios/hssandroid/n;
.super Lcom/leanplum/callbacks/StartCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/n;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-direct {p0}, Lcom/leanplum/callbacks/StartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->h:Z

    .line 397
    return-void
.end method
