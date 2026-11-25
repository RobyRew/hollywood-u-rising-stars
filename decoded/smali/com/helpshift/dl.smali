.class public final enum Lcom/helpshift/dl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helpshift/dl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/helpshift/dl;

.field public static final enum b:Lcom/helpshift/dl;

.field public static final enum c:Lcom/helpshift/dl;

.field private static final synthetic d:[Lcom/helpshift/dl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/helpshift/dl;

    const-string/jumbo v1, "FULL_SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/helpshift/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/dl;->a:Lcom/helpshift/dl;

    .line 22
    new-instance v0, Lcom/helpshift/dl;

    const-string/jumbo v1, "METAPHONE_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/helpshift/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/dl;->b:Lcom/helpshift/dl;

    .line 23
    new-instance v0, Lcom/helpshift/dl;

    const-string/jumbo v1, "KEYWORD_SEARCH"

    invoke-direct {v0, v1, v4}, Lcom/helpshift/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/dl;->c:Lcom/helpshift/dl;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpshift/dl;

    sget-object v1, Lcom/helpshift/dl;->a:Lcom/helpshift/dl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/dl;->b:Lcom/helpshift/dl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/dl;->c:Lcom/helpshift/dl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/dl;->d:[Lcom/helpshift/dl;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/dl;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/helpshift/dl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helpshift/dl;

    return-object v0
.end method

.method public static values()[Lcom/helpshift/dl;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/helpshift/dl;->d:[Lcom/helpshift/dl;

    invoke-virtual {v0}, [Lcom/helpshift/dl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/dl;

    return-object v0
.end method
