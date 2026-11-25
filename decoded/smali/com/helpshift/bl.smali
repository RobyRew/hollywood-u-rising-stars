.class public Lcom/helpshift/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/ei;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/helpshift/ei;->a(Landroid/content/Context;)Lcom/helpshift/ei;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bl;->a:Lcom/helpshift/ei;

    .line 37
    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "create table __hs__faqs (_id integer primary key autoincrement, __hs__qid text not null, __hs__publish_id text not null, __hs__section_id text not null, __hs__title text not null, __hs__body text not null, __hs__is_helpful integer, __hs__is_rtl integer, FOREIGN KEY(__hs__section_id) REFERENCES __hs__sections (_id));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "DROP TABLE IF EXISTS __hs__faqs"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "drop table __hs__faqs;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method
