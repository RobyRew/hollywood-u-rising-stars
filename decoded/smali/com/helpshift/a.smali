.class public final Lcom/helpshift/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/helpshift/dx;

.field private static b:Lcom/helpshift/ee;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/a;->a:Lcom/helpshift/dx;

    .line 12
    sget-object v0, Lcom/helpshift/ee;->a:Lcom/helpshift/ee;

    sput-object v0, Lcom/helpshift/a;->b:Lcom/helpshift/ee;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/helpshift/a;->a:Lcom/helpshift/dx;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/helpshift/dx;

    invoke-direct {v0, p0}, Lcom/helpshift/dx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/a;->a:Lcom/helpshift/dx;

    .line 27
    :cond_0
    return-void
.end method

.method protected static a(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 34
    :cond_0
    const-string/jumbo v0, "enableContactUs"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/helpshift/ee;

    if-eqz v1, :cond_2

    .line 37
    const-string/jumbo v0, "enableContactUs"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ee;

    sput-object v0, Lcom/helpshift/a;->b:Lcom/helpshift/ee;

    .line 45
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    sget-object v0, Lcom/helpshift/ee;->a:Lcom/helpshift/ee;

    sput-object v0, Lcom/helpshift/a;->b:Lcom/helpshift/ee;

    goto :goto_0

    .line 42
    :cond_3
    sget-object v0, Lcom/helpshift/ee;->b:Lcom/helpshift/ee;

    sput-object v0, Lcom/helpshift/a;->b:Lcom/helpshift/ee;

    goto :goto_0
.end method

.method protected static a(Lcom/helpshift/c;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    sget-object v2, Lcom/helpshift/b;->b:[I

    sget-object v3, Lcom/helpshift/a;->b:Lcom/helpshift/ee;

    invoke-virtual {v3}, Lcom/helpshift/ee;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v2, Lcom/helpshift/b;->a:[I

    invoke-virtual {p0}, Lcom/helpshift/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 62
    :pswitch_3
    sget-object v2, Lcom/helpshift/a;->a:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v2

    .line 63
    sget-object v3, Lcom/helpshift/a;->a:Lcom/helpshift/dx;

    invoke-virtual {v3}, Lcom/helpshift/dx;->v()Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 68
    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 54
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
