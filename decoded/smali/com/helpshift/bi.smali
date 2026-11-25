.class public final enum Lcom/helpshift/bi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helpshift/bi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/helpshift/bi;

.field public static final enum b:Lcom/helpshift/bi;

.field public static final enum c:Lcom/helpshift/bi;

.field public static final enum d:Lcom/helpshift/bi;

.field public static final enum e:Lcom/helpshift/bi;

.field public static final enum f:Lcom/helpshift/bi;

.field private static final synthetic g:[Lcom/helpshift/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/helpshift/bi;

    const-string/jumbo v1, "CSAT_NOT_APPLICABLE"

    invoke-direct {v0, v1, v3}, Lcom/helpshift/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/bi;->a:Lcom/helpshift/bi;

    .line 81
    new-instance v0, Lcom/helpshift/bi;

    const-string/jumbo v1, "CSAT_APPLICABLE"

    invoke-direct {v0, v1, v4}, Lcom/helpshift/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/bi;->b:Lcom/helpshift/bi;

    .line 82
    new-instance v0, Lcom/helpshift/bi;

    const-string/jumbo v1, "CSAT_REQUESTED"

    invoke-direct {v0, v1, v5}, Lcom/helpshift/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/bi;->c:Lcom/helpshift/bi;

    .line 83
    new-instance v0, Lcom/helpshift/bi;

    const-string/jumbo v1, "CSAT_INPROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/helpshift/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/bi;->d:Lcom/helpshift/bi;

    .line 84
    new-instance v0, Lcom/helpshift/bi;

    const-string/jumbo v1, "CSAT_DONE"

    invoke-direct {v0, v1, v7}, Lcom/helpshift/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/bi;->e:Lcom/helpshift/bi;

    .line 85
    new-instance v0, Lcom/helpshift/bi;

    const-string/jumbo v1, "CSAT_RETRYING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/helpshift/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/bi;->f:Lcom/helpshift/bi;

    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/helpshift/bi;

    sget-object v1, Lcom/helpshift/bi;->a:Lcom/helpshift/bi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/bi;->b:Lcom/helpshift/bi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/bi;->c:Lcom/helpshift/bi;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/bi;->d:Lcom/helpshift/bi;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/bi;->e:Lcom/helpshift/bi;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/helpshift/bi;->f:Lcom/helpshift/bi;

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/bi;->g:[Lcom/helpshift/bi;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/bi;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/helpshift/bi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helpshift/bi;

    return-object v0
.end method

.method public static values()[Lcom/helpshift/bi;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/helpshift/bi;->g:[Lcom/helpshift/bi;

    invoke-virtual {v0}, [Lcom/helpshift/bi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/bi;

    return-object v0
.end method
