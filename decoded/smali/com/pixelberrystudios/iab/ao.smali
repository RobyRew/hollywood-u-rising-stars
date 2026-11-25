.class public final enum Lcom/pixelberrystudios/iab/ao;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pixelberrystudios/iab/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pixelberrystudios/iab/ao;

.field public static final enum b:Lcom/pixelberrystudios/iab/ao;

.field public static final enum c:Lcom/pixelberrystudios/iab/ao;

.field public static final enum d:Lcom/pixelberrystudios/iab/ao;

.field private static final synthetic e:[Lcom/pixelberrystudios/iab/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/pixelberrystudios/iab/ao;

    const-string/jumbo v1, "VERIFIED_PURCHASE"

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pixelberrystudios/iab/ao;->a:Lcom/pixelberrystudios/iab/ao;

    .line 21
    new-instance v0, Lcom/pixelberrystudios/iab/ao;

    const-string/jumbo v1, "INVALID_PURCHASE"

    invoke-direct {v0, v1, v3}, Lcom/pixelberrystudios/iab/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pixelberrystudios/iab/ao;->b:Lcom/pixelberrystudios/iab/ao;

    .line 22
    new-instance v0, Lcom/pixelberrystudios/iab/ao;

    const-string/jumbo v1, "NET_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/pixelberrystudios/iab/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pixelberrystudios/iab/ao;->c:Lcom/pixelberrystudios/iab/ao;

    .line 23
    new-instance v0, Lcom/pixelberrystudios/iab/ao;

    const-string/jumbo v1, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/pixelberrystudios/iab/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pixelberrystudios/iab/ao;->d:Lcom/pixelberrystudios/iab/ao;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pixelberrystudios/iab/ao;

    sget-object v1, Lcom/pixelberrystudios/iab/ao;->a:Lcom/pixelberrystudios/iab/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pixelberrystudios/iab/ao;->b:Lcom/pixelberrystudios/iab/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pixelberrystudios/iab/ao;->c:Lcom/pixelberrystudios/iab/ao;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pixelberrystudios/iab/ao;->d:Lcom/pixelberrystudios/iab/ao;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pixelberrystudios/iab/ao;->e:[Lcom/pixelberrystudios/iab/ao;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pixelberrystudios/iab/ao;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/pixelberrystudios/iab/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pixelberrystudios/iab/ao;

    return-object v0
.end method

.method public static values()[Lcom/pixelberrystudios/iab/ao;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/pixelberrystudios/iab/ao;->e:[Lcom/pixelberrystudios/iab/ao;

    invoke-virtual {v0}, [Lcom/pixelberrystudios/iab/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pixelberrystudios/iab/ao;

    return-object v0
.end method
