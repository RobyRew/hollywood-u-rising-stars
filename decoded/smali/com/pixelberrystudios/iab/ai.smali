.class public final enum Lcom/pixelberrystudios/iab/ai;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pixelberrystudios/iab/ai;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pixelberrystudios/iab/ai;

.field public static final enum b:Lcom/pixelberrystudios/iab/ai;

.field private static final synthetic c:[Lcom/pixelberrystudios/iab/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/pixelberrystudios/iab/ai;

    const-string/jumbo v1, "MARKET_TYPE_ANDROID"

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pixelberrystudios/iab/ai;->a:Lcom/pixelberrystudios/iab/ai;

    .line 56
    new-instance v0, Lcom/pixelberrystudios/iab/ai;

    const-string/jumbo v1, "MARKET_TYPE_AMAZON"

    invoke-direct {v0, v1, v3}, Lcom/pixelberrystudios/iab/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pixelberrystudios/iab/ai;->b:Lcom/pixelberrystudios/iab/ai;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pixelberrystudios/iab/ai;

    sget-object v1, Lcom/pixelberrystudios/iab/ai;->a:Lcom/pixelberrystudios/iab/ai;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pixelberrystudios/iab/ai;->b:Lcom/pixelberrystudios/iab/ai;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pixelberrystudios/iab/ai;->c:[Lcom/pixelberrystudios/iab/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pixelberrystudios/iab/ai;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/pixelberrystudios/iab/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pixelberrystudios/iab/ai;

    return-object v0
.end method

.method public static values()[Lcom/pixelberrystudios/iab/ai;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/pixelberrystudios/iab/ai;->c:[Lcom/pixelberrystudios/iab/ai;

    invoke-virtual {v0}, [Lcom/pixelberrystudios/iab/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pixelberrystudios/iab/ai;

    return-object v0
.end method
