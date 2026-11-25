.class public Lcom/pixelberrystudios/iab/v;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/pixelberrystudios/iab/am;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    invoke-direct {v0, p1, p2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pixelberrystudios/iab/v;-><init>(Lcom/pixelberrystudios/iab/am;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    invoke-direct {v0, p1, p2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/pixelberrystudios/iab/v;-><init>(Lcom/pixelberrystudios/iab/am;Ljava/lang/Exception;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/pixelberrystudios/iab/am;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pixelberrystudios/iab/v;-><init>(Lcom/pixelberrystudios/iab/am;Ljava/lang/Exception;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/pixelberrystudios/iab/am;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iput-object p1, p0, Lcom/pixelberrystudios/iab/v;->a:Lcom/pixelberrystudios/iab/am;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lcom/pixelberrystudios/iab/am;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pixelberrystudios/iab/v;->a:Lcom/pixelberrystudios/iab/am;

    return-object v0
.end method
