.class public final enum Lcom/immersion/hapticmediasdk/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/immersion/hapticmediasdk/b;

.field public static final enum b:Lcom/immersion/hapticmediasdk/b;

.field public static final enum c:Lcom/immersion/hapticmediasdk/b;

.field public static final enum d:Lcom/immersion/hapticmediasdk/b;

.field public static final enum e:Lcom/immersion/hapticmediasdk/b;

.field public static final enum f:Lcom/immersion/hapticmediasdk/b;

.field public static final enum g:Lcom/immersion/hapticmediasdk/b;

.field public static final enum h:Lcom/immersion/hapticmediasdk/b;

.field public static final enum i:Lcom/immersion/hapticmediasdk/b;

.field public static j:I = 0x6

.field public static k:I = 0x1

.field public static l:I = 0x2

.field public static m:I

.field private static final synthetic n:[Lcom/immersion/hapticmediasdk/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->a:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->b:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "PLAYING"

    invoke-direct {v0, v1, v5}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->c:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->d:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "STOPPED_DUE_TO_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->e:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->f:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "PAUSED_DUE_TO_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->g:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    const-string/jumbo v1, "PAUSED_DUE_TO_BUFFERING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    :pswitch_0
    packed-switch v4, :pswitch_data_0

    :goto_0
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sput-object v0, Lcom/immersion/hapticmediasdk/b;->h:Lcom/immersion/hapticmediasdk/b;

    new-instance v0, Lcom/immersion/hapticmediasdk/b;

    invoke-static {}, Lcom/immersion/hapticmediasdk/b;->a()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/b;->k:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/b;->a()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b;->l:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b;->m:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/b;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/b;->j:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/b;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/b;->m:I

    :cond_0
    const-string/jumbo v1, "DISPOSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->i:Lcom/immersion/hapticmediasdk/b;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/immersion/hapticmediasdk/b;

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->a:Lcom/immersion/hapticmediasdk/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->b:Lcom/immersion/hapticmediasdk/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->c:Lcom/immersion/hapticmediasdk/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->d:Lcom/immersion/hapticmediasdk/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->e:Lcom/immersion/hapticmediasdk/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/immersion/hapticmediasdk/b;->f:Lcom/immersion/hapticmediasdk/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/immersion/hapticmediasdk/b;->g:Lcom/immersion/hapticmediasdk/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/immersion/hapticmediasdk/b;->h:Lcom/immersion/hapticmediasdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/immersion/hapticmediasdk/b;->i:Lcom/immersion/hapticmediasdk/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/immersion/hapticmediasdk/b;->n:[Lcom/immersion/hapticmediasdk/b;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/b;
    .locals 3

    :try_start_0
    const-class v0, Lcom/immersion/hapticmediasdk/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    sget v1, Lcom/immersion/hapticmediasdk/b;->j:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/b;->b()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b;->j:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b;->l:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b;->m:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x16

    sput v1, Lcom/immersion/hapticmediasdk/b;->j:I

    const/4 v1, 0x7

    sput v1, Lcom/immersion/hapticmediasdk/b;->m:I

    :cond_0
    :try_start_2
    check-cast v0, Lcom/immersion/hapticmediasdk/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public static values()[Lcom/immersion/hapticmediasdk/b;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/b;->j:I

    sget v1, Lcom/immersion/hapticmediasdk/b;->k:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b;->l:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/b;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/b;->j:I

    const/16 v0, 0x48

    sput v0, Lcom/immersion/hapticmediasdk/b;->k:I

    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/immersion/hapticmediasdk/b;->n:[Lcom/immersion/hapticmediasdk/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, [Lcom/immersion/hapticmediasdk/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/immersion/hapticmediasdk/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
