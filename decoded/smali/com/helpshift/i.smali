.class public final Lcom/helpshift/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/helpshift/eq;->hs__show_conversation:I

    sput v0, Lcom/helpshift/i;->a:I

    .line 43
    sget v0, Lcom/helpshift/eq;->hs__add_conversation_menu:I

    sput v0, Lcom/helpshift/i;->b:I

    .line 44
    sget v0, Lcom/helpshift/eq;->hs__faqs_fragment:I

    sput v0, Lcom/helpshift/i;->c:I

    .line 45
    sget v0, Lcom/helpshift/eq;->hs__messages_menu:I

    sput v0, Lcom/helpshift/i;->d:I

    .line 46
    sget v0, Lcom/helpshift/eq;->hs__search_on_conversation:I

    sput v0, Lcom/helpshift/i;->e:I

    .line 47
    sget v0, Lcom/helpshift/eq;->hs__actionbar_indeterminate_progress:I

    sput v0, Lcom/helpshift/i;->f:I

    return-void
.end method
