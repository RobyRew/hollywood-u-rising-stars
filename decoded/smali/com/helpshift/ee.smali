.class public final enum Lcom/helpshift/ee;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helpshift/ee;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/helpshift/ee;

.field public static final enum b:Lcom/helpshift/ee;

.field public static final enum c:Lcom/helpshift/ee;

.field private static final synthetic d:[Lcom/helpshift/ee;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/helpshift/ee;

    const-string/jumbo v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/helpshift/ee;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ee;->a:Lcom/helpshift/ee;

    .line 74
    new-instance v0, Lcom/helpshift/ee;

    const-string/jumbo v1, "NEVER"

    invoke-direct {v0, v1, v3}, Lcom/helpshift/ee;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ee;->b:Lcom/helpshift/ee;

    .line 80
    new-instance v0, Lcom/helpshift/ee;

    const-string/jumbo v1, "AFTER_VIEWING_FAQS"

    invoke-direct {v0, v1, v4}, Lcom/helpshift/ee;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ee;->c:Lcom/helpshift/ee;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpshift/ee;

    sget-object v1, Lcom/helpshift/ee;->a:Lcom/helpshift/ee;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/ee;->b:Lcom/helpshift/ee;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/ee;->c:Lcom/helpshift/ee;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/ee;->d:[Lcom/helpshift/ee;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/ee;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/helpshift/ee;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ee;

    return-object v0
.end method

.method public static values()[Lcom/helpshift/ee;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/helpshift/ee;->d:[Lcom/helpshift/ee;

    invoke-virtual {v0}, [Lcom/helpshift/ee;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/ee;

    return-object v0
.end method
