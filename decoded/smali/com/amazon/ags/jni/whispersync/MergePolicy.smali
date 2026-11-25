.class public final enum Lcom/amazon/ags/jni/whispersync/MergePolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/ags/jni/whispersync/MergePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ags/jni/whispersync/MergePolicy;

.field public static final enum HIGHEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

.field public static final enum LATEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

.field public static final enum LOWEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

.field public static final enum NONE:Lcom/amazon/ags/jni/whispersync/MergePolicy;

.field private static mergePolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/ags/jni/whispersync/MergePolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 13
    new-instance v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;

    const-string/jumbo v2, "NONE"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;->NONE:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    .line 14
    new-instance v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;

    const-string/jumbo v2, "HIGHEST"

    invoke-direct {v1, v2, v4, v0}, Lcom/amazon/ags/jni/whispersync/MergePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;->HIGHEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    .line 15
    new-instance v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;

    const-string/jumbo v2, "LOWEST"

    invoke-direct {v1, v2, v5, v4}, Lcom/amazon/ags/jni/whispersync/MergePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;->LOWEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    .line 16
    new-instance v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;

    const-string/jumbo v2, "LATEST"

    invoke-direct {v1, v2, v6, v5}, Lcom/amazon/ags/jni/whispersync/MergePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;->LATEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    .line 11
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/ags/jni/whispersync/MergePolicy;

    sget-object v2, Lcom/amazon/ags/jni/whispersync/MergePolicy;->NONE:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    aput-object v2, v1, v0

    sget-object v2, Lcom/amazon/ags/jni/whispersync/MergePolicy;->HIGHEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/ags/jni/whispersync/MergePolicy;->LOWEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/ags/jni/whispersync/MergePolicy;->LATEST:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    aput-object v2, v1, v6

    sput-object v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;->$VALUES:[Lcom/amazon/ags/jni/whispersync/MergePolicy;

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyMap:Ljava/util/Map;

    .line 20
    invoke-static {}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->values()[Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 21
    sget-object v4, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/amazon/ags/jni/whispersync/MergePolicy;->value:I

    .line 39
    return-void
.end method

.method public static mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/jni/whispersync/MergePolicy;

    .line 28
    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/amazon/ags/jni/whispersync/MergePolicy;->NONE:Lcom/amazon/ags/jni/whispersync/MergePolicy;

    .line 31
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ags/jni/whispersync/MergePolicy;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/amazon/ags/jni/whispersync/MergePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/jni/whispersync/MergePolicy;

    return-object v0
.end method

.method public static values()[Lcom/amazon/ags/jni/whispersync/MergePolicy;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/amazon/ags/jni/whispersync/MergePolicy;->$VALUES:[Lcom/amazon/ags/jni/whispersync/MergePolicy;

    invoke-virtual {v0}, [Lcom/amazon/ags/jni/whispersync/MergePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ags/jni/whispersync/MergePolicy;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/amazon/ags/jni/whispersync/MergePolicy;->value:I

    return v0
.end method
