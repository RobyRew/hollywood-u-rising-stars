.class Lcom/pixelberrystudios/darthkitty/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/DKAmazon;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/DKAmazon;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/a;->a:Lcom/pixelberrystudios/darthkitty/DKAmazon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->authenticateSuccess(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-boolean v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->d:Z

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pixelberrystudios/darthkitty/DKAmazon;->d:Z

    .line 78
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->b()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->authenticateFailure()V

    goto :goto_0
.end method
