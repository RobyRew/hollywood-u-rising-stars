.class public Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;


# instance fields
.field private b:Z

.field private c:Lcom/pixelberrystudios/iab/ah;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    .line 28
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->c:Lcom/pixelberrystudios/iab/ah;

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "DKAmazonHelper"

    const-string/jumbo v1, "You need to set the listener when you call authenticateLoalPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->c:Lcom/pixelberrystudios/iab/ah;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/d;

    invoke-direct {v1, p0, p1}, Lcom/pixelberrystudios/darthkitty/d;-><init>(Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;)V

    invoke-interface {v0, v1}, Lcom/pixelberrystudios/iab/ah;->startSetup(Lcom/pixelberrystudios/iab/ak;)V

    goto :goto_0
.end method

.method protected a(Lcom/pixelberrystudios/iab/ah;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->c:Lcom/pixelberrystudios/iab/ah;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->b:Z

    .line 38
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;->b:Z

    return v0
.end method
